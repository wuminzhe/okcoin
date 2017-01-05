module Okcoin

  class Base
    include HttpUtils
    extend ApiDefineTool

    def initialize(url: 'https://www.okcoin.cn/api/', api_key:, secret_key:)
      @url = url
      @api_key = api_key
      @secret_key = secret_key
    end

    protected

    def sign(params)
      params_string = params.sort.collect{|k, v| "#{k}=#{v}"} * '&'
      params_string = params_string + "&secret_key=#{@secret_key}"
      Digest::MD5.hexdigest(params_string).upcase
    end
  end
  
end