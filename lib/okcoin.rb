require "okcoin/version"
require "okcoin/rest_api"

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
