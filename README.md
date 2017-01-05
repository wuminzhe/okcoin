# 币行接口 Ruby 实现

okcoin.cn的Rest Api很简单易懂，但是官方并有提供ruby实现，并且其他ruby实现都没有更新或者是国际站的实现，所以决定自己写一个，目前实现了全部Rest API，支持国际站。

1. 保持跟踪最新的api


2. 名字等细节尽量与okcoin.cn保持一致，目前所有的api都完全和官方文档一致


## 安装

把下面这行加到你的 Gemfile里面:

```ruby
gem 'okcoin', '~> 0.1.5'
```

然后执行命令:

    $ bundle

当然，你也可以手工安装:

    $ gem install okcoin
不要使用0.1.4以前的版本

## 使用

```ruby
require 'okcoin'

# 如果要看详细的访问情况，把日志级别设置为debug
Okcoin::logger.level = Logger::DEBUG


client = Okcoin::Client.new url: api_key: 'YOUR_OKCOIN_APIKEY', secret_key: 'YOUR_OKCOIN_SECRET'
# or
# 连国际站，设置url
# client = Okcoin::Client.new url: 'https://www.okcoin.com/api/', api_key: 'YOUR_OKCOIN_APIKEY', secret_key: 'YOUR_OKCOIN_SECRET'

result = client.ticker(symbol: "btc_cny")
result = client.trades(symbol: 'btc_cny', since: nil)
```

结果以ruby数据格式返回。

更多接口详情，请查看[okcoin官方文档](https://www.okcoin.cn/rest_getStarted.html)。

## Contributing

我的邮箱：wuminzhe@126.com，QQ：276578497

如果觉得有用，支持点币😆：**19n1AiDnzbnuEJcnwVmuXSUP1dpodBMdHF**



Bug reports and pull requests are welcome on GitHub at https://github.com/wuminzhe/okcoin. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

