require "net/http"
require "uri"
require "json"
require "logger"
require "digest/md5"
require "./http_utils"
require "./api_define_tool"

module Okcoin

  class Base
    include HttpUtils
    extend ApiDefineTool

    def initialize(url,api_key,secret_key)
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