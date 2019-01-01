require 'test_helper'

module Payments
  class PaymentTest < ActiveSupport::TestCase
    include TestCase
    
    test 'authorize' do
      payment = Payment.new
      payment.authorize(transaction_id, order_id)
      assert_changes(payment.unpublished_events, [
        PaymentAuthorized.new(data: {
          transaction_id: transaction_id,
          order_id: order_id
        })
      ])
    end

    private

    def transaction_id
      @transaction_id ||= SecureRandom.hex(16)
    end

    def order_id
      @order_id ||= SecureRandom.uuid
    end
  end
end