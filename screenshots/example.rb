# frozen_string_literal: true

require 'json'

# Sample file for theme screenshots — dense on purpose, so one capture shows
# comments, keywords, constants, symbols, strings, regex, numbers and types.
module Replicant
  VERSION = '0.0.1'
  AA = 4.5
  HEX = /\A#(?<r>\h{2})(?<g>\h{2})(?<b>\h{2})\z/i

  Pair = Struct.new(:scope, :fg, :bg, keyword_init: true)

  class ContrastError < StandardError; end

  # Audits a VS Code colour theme against WCAG AA.
  class VoightKampff
    attr_reader :theme, :threshold

    def initialize(path, threshold: AA)
      @theme     = JSON.parse(File.read(path), symbolize_names: true)
      @threshold = threshold
      @failures  = []
    end

    def background = theme.dig(:colors, :'editor.background')

    def run!(strict: false)
      theme[:tokenColors].each do |rule|
        fg = rule.dig(:settings, :foreground) or next
        pair = Pair.new(scope: rule[:name] || '(unnamed)', fg: fg, bg: background)
        ratio = contrast(pair)

        @failures << pair if ratio < threshold
        puts format('  %-38s %5.2f:1  %s', pair.scope, ratio, ratio >= threshold ? '✓' : '✗')
      end

      raise ContrastError, "#{@failures.size} rules below #{threshold}:1" if strict && @failures.any?

      @failures
    end

    private

    def contrast(pair)
      hi, lo = [luminance(pair.fg), luminance(pair.bg)].minmax.reverse
      ((hi + 0.05) / (lo + 0.05)).round(4)
    end

    def luminance(hex)
      md = HEX.match(hex) or raise ArgumentError, "bad colour: #{hex.inspect}"
      r, g, b = %i[r g b].map { |c| linearise(md[c].to_i(16) / 255.0) }
      (0.2126 * r) + (0.7152 * g) + (0.0722 * b)
    end

    def linearise(c) = c <= 0.04045 ? c / 12.92 : ((c + 0.055) / 1.055)**2.4
  end
end

if __FILE__ == $PROGRAM_NAME
  audit = Replicant::VoightKampff.new('themes/replicant-color-theme.json')
  puts <<~BANNER
    Replicant v#{Replicant::VERSION} — Voight-Kampff
    background: #{audit.background}
  BANNER
  warn "#{audit.run!.size} failures" # => 0
end
