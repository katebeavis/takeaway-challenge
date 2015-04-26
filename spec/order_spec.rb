require 'spec_helper'
require 'order'

describe Order do
  subject { described_class.new(maximum_order: 10) }
  let(:frosties) { double :dish, price: 2.50 }
  let(:coco_pops) { double :dish, price: 4.20 }

  it 'has a maximum order value' do
    expect(subject.maximum_order).to eq 10
  end

  it 'lets you add cereal to your order' do
    subject.add_dish(frosties, 1)
    expect(subject.orders).to include(frosties)
  end

  it 'knows how many of each item are in the order' do
    subject.add_dish(frosties, 2)
    subject.add_dish(coco_pops, 3)
    expect(subject.item_count).to eq(5)
  end

  it 'can calculate the total of an order' do
    subject.add_dish(frosties, 2)
    subject.add_dish(coco_pops, 3)
    expect(subject.order_total).to eq(17.60)
  end

  it 'shows a list of all orders' do
    subject.add_dish(frosties, 2)
    expect(subject.display_current_order).to include(frosties)
  end
end
