require 'rails_helper'

RSpec.describe User, type: :model do
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

  it 'should have an email' do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it 'should have a password' do
    subject.password = nil
    expect(subject).to_not be_valid
  end

  it 'should have a password confirmation' do
    subject.password_confirmation = nil
    expect(subject).to_not be_valid
  end

  it 'should have a password confirmation that matches password' do
    subject.password_confirmation = '1234567'
    expect(subject).to_not be_valid
  end

  it 'should have a commodities association' do
    host = User.reflect_on_association(:commodities)
    expect(host.macro).to eq(:has_many)
  end

  it 'should have a txes association' do
    host = User.reflect_on_association(:txes)
    expect(host.macro).to eq(:has_many)
  end
end
