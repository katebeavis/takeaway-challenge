require 'spec_helper'
require 'dish'

describe Dish do
  subject { described_class.new('frosties', 1) }

  it 'is be able to create a food item' do
    expect(subject.name).to eq 'frosties'
  end

  it 'is be able to set a price for an item' do
    expect(subject.price).to eq 1
  end
end
