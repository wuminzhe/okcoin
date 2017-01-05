require "okcoin/version"
require "net/http"
require "uri"
require "json"
require "logger"
require "digest/md5"
require "okcoin/http_utils"
require "okcoin/api_define_tool"
require 'okcoin/base'
require "okcoin/client"

def logger
  if $logger.nil?
    $logger = Logger.new(STDOUT)
    $logger.level = Logger::DEBUG
  end
  return $logger
end

module Okcoin
  class Object
	  def blank?
	    respond_to?(:empty?) ? !!empty? : !self
	  end
	end
end
