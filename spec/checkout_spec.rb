require 'checkout'
require 'timecop'

describe Checkout do
  subject { described_class.new }
  let(:order1) { double :order, order_total: 2.50 }

  before do
    Timecop.freeze(Time.new('2015-04-26 15:23:00.292834000 +0100'))
  end

  it 'tells the customer that their food will be delivered with an hour' do
    expect(subject.delivery_time).to eq(Time.new + 3600)
  end

  it 'raises an error if the money doesn\'t match the total' do
    subject.money_paid(2.50)
    expect { subject.pay_money(order1) }.to raise_error(RuntimeError, 'You have entered an incorrect amount, please reenter')
  end
end
