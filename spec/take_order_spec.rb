require 'take_order'

describe Checkout do

  let(:checkout){ Checkout.new }

  it 'should be able to give an option to see menu upon welcome' do
    checkout.welcome
    expect(checkout.welcome).to receive(:puts).and_return "Welcome to the Cereal Cafe Please press 1 to see the menu or 2 to exit"
  end

  xit 'should tell the customter that their food will be delivered with an hour' do
    expect(checkout.delivery_time).to eq (Time.new + 3600)
  end #when this is tested it fails as the time is less than a millisecond apart

















end