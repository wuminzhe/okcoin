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

class Object
  def blank?
    respond_to?(:empty?) ? !!empty? : !self
  end
end

module Okcoin
  def self.logger
    if $logger.nil?
      $logger = Logger.new(STDOUT)
      $logger.level = Logger::WARN
    end
    return $logger
  end
end
