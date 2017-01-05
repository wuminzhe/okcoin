module Okcoin
  module HttpUtils
    # result = http_get("https://www.okcoin.cn/api/v1/trades.do", { symbol: 'btc_usd', since: nil })
    def http_get(url, params={})
      uri = URI(url)
      uri.query = URI.encode_www_form(params)
      Okcoin::logger.debug( 'GET: ' + (uri.query.blank? ? url : "#{url}?#{uri.query}") )

      response = Net::HTTP.start(uri.host, uri.port, :use_ssl => true) do |http|
        request = Net::HTTP::Get.new uri
        http.request request
      end

      if response.is_a?(Net::HTTPOK)
        JSON.parse(response.body)
      else
        Okcoin::logger.error('response code is not 200!')
        nil # todo: 报个异常
      end
    end

    def http_post(url, params={})
      uri = URI(url)
      Okcoin::logger.debug( "POST: #{url}?#{URI.encode_www_form(params)}" )
      response = Net::HTTP.start(uri.hostname, uri.port, :use_ssl => true) do |http|
          request = Net::HTTP::Post.new(uri)
          request.set_form_data(params)
          http.request request
      end

      if response.is_a?(Net::HTTPOK)
        JSON.parse(response.body)
      else
        Okcoin::logger.error('response code is not 200!')
        nil # todo: 报个异常
      end
    end
  end
end
