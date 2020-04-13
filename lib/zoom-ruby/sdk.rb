

require 'httparty'
require 'json'
require 'Base64'
require 'openssl'

module ZoomRuby
  class Sdk
    include HTTParty

    def initialize(*args)
      options = ZoomRuby::Utility.extract_options(args)
      self.class.default_params(
        api_key: options[:api_key],
        api_secret: options[:api_secret]
      )
      self.class.default_timeout(options[:timeout])
    end

    def get_signature(options = {})
      time = (Time.now.to_i * 1000 - 30000).to_s
      data = Base64.strict_encode64(self.class.default_params[:api_key] + options[:meeting_number] + time + options[:role].to_s)
      hash = Base64.strict_encode64(OpenSSL::HMAC.digest(OpenSSL::Digest.new('sha256'), self.class.default_params[:api_secret], data))
      tempStr = self.class.default_params[:api_key] + '.' + options[:meeting_number] + '.' + time + '.' + options[:role].to_s + '.' + hash
      return Base64.strict_encode64(tempStr).gsub('+', '-').gsub('/', '_').gsub(/#{Regexp.escape('=')}+$/, '')
    end
  end
end
