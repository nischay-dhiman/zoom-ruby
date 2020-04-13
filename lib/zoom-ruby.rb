require 'zoom-ruby/sdk'
require 'zoom-ruby/utility'
require 'zoom-ruby/engine'

module ZoomRuby
  class << self
    attr_accessor :configuration

    def new
      @configuration ||= Configuration.new
      ZoomRuby::Sdk.new(
        api_key: @configuration.api_key,
        api_secret: @configuration.api_secret,
        timeout: @configuration.timeout,
      )
    end

    def configure
      @configuration ||= Configuration.new
      yield(@configuration)
    end
  end

  class Configuration
    attr_accessor :api_key, :api_secret, :timeout

    def initialize
      @api_key = @api_secret = '###'
      @timeout = 20
    end
  end
end