module ZoomRuby
  class Utility
    def self.extract_options(options_array)
      options_array.last.is_a?(::Hash) ? options_array.pop : {}
    end
  end
end