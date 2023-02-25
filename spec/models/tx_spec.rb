require 'rails_helper'

RSpec.describe Tx, type: :model do
  let(:user) { User.create!(name: 'John', email: 'John@example.com', password: 123_456) }
  let(:commodity) do
    Commodity.create!(name: 'Apple', icon: 'https://www.example.com', user_id: user.id)
  end
  let(:tx) do
    Tx.create!(name: 'Apple', amount: 1.0, user_id: user.id, commodity_id: commodity.id)
  end

  it 'should have a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'should have an author_id' do
    subject.author_id = nil
    expect(subject).to_not be_valid
  end

  it 'should have a user_id' do
    subject.user_id = nil
    expect(subject).to_not be_valid
  end

  it 'should have a user_id that is an integer' do
    subject.user_id = '1'
    expect(subject).to_not be_valid
  end

  it 'should belong to a user' do
    host = Tx.reflect_on_association(:commodity)
    expect(host.macro).to eq(:belongs_to)
  end

  it 'should belong to a commodity' do
    host = Tx.reflect_on_association(:commodity)
    expect(host.macro).to eq(:belongs_to)
  end
end
