# 币行中国站接口 Ruby 实现

okcoin.cn的Rest Api很简单易懂，但是官方并有提供ruby实现，并且其他ruby实现都没有更新或者是国际站的实现，所以决定自己写一个，目前实现了全部Rest API。

1. 保持跟踪最新的api


2. 名字等细节尽量与okcoin.cn保持一致，目前所有的api都完全和官方文档一致


## 安装

把下面这行加到你的 Gemfile里面:

```ruby
gem 'okcoin'
```

然后执行命令:

    $ bundle

当然，你也可以手工安装:

    $ gem install okcoin

## 使用

```ruby
require 'okcoin'

# 如果要看详细的访问情况，把日志级别设置为debug
Okcoin::logger.level = Logger::DEBUG

# url可选，默认就是https://www.okcoin.cn/api/，后面两个必选
client = Okcoin::Client.new url: 'https://www.okcoin.cn/api/', api_key: 'YOUR_OKCOIN_APIKEY', secret_key: 'YOUR_OKCOIN_SECRET'

client.ticker(symbol: "btc_cny")
client.trades(symbol: 'btc_cny', since: nil)
```

结果以ruby数据格式表达。

更多接口详情，请查看[okcoin官方文档](https://www.okcoin.cn/rest_getStarted.html)。

## Contributing

如果有问题给我发邮件：wuminzhe@126.com，也是我的支付宝账号😆

Bug reports and pull requests are welcome on GitHub at https://github.com/wuminzhe/okcoin. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

