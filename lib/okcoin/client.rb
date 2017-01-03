require './base'

module Okcoin
  class Client < Base
    # 行情 API
    define_get_api :ticker, :depth, :trades, :kline

    # 交易 API
    define_post_api :userinfo, :trade, :trade_history, :batch_trade, :cancel_order, :order_info, 
                    :orders_info, :order_history, :withdraw, :cancel_withdraw, :withdraw_info, 
                    :lend_depth, :borrows_info, :borrow_money, :cancel_borrow, :borrow_order_info,
                    :repayment, :unrepayments_info, :account_records
  end
end
