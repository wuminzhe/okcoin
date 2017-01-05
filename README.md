# okcoin.cn Rest Api Ruby Wrapper

okcoin.cn的Rest Api很简单易懂，但是官方并有提供ruby实现，并且其他ruby实现都没有更新或者是国际站的实现，所以决定自己写一个。
​    
	1. 保持跟踪最新的api

	2. 名字等细节尽量与okcoin.cn保持一致，目前所有的api都完全和官方文档一致

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'okcoin'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install okcoin

## Usage

```ruby
client = Okcoin::Client.new 'https://www.okcoin.cn/api/', api_key: 'YOUR_OKCOIN_APIKEY', secret_key: 'YOUR_OKCOIN_SECRET'
client.ticker(symbol: "btc_cny")
client.trades(symbol: 'btc_cny', since: nil)
```

结果以ruby数据格式表达。

更多接口详情，请查看[okcoin官方文档](https://www.okcoin.cn/rest_getStarted.html)。

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/wuminzhe/okcoin. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

