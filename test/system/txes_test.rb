require 'application_system_test_case'

class TxesTest < ApplicationSystemTestCase
  setup do
    @tx = txes(:one)
  end

  test 'visiting the index' do
    visit txes_url
    assert_selector 'h1', text: 'Txes'
  end

  test 'should create tx' do
    visit txes_url
    click_on 'New tx'

    fill_in 'Amount', with: @tx.amount
    fill_in 'Author', with: @tx.author_id
    fill_in 'Commodity', with: @tx.commodity_id
    fill_in 'Name', with: @tx.name
    fill_in 'User', with: @tx.user_id
    click_on 'Create Tx'

    assert_text 'Tx was successfully created'
    click_on 'Back'
  end

  test 'should update Tx' do
    visit tx_url(@tx)
    click_on 'Edit this tx', match: :first

    fill_in 'Amount', with: @tx.amount
    fill_in 'Author', with: @tx.author_id
    fill_in 'Commodity', with: @tx.commodity_id
    fill_in 'Name', with: @tx.name
    fill_in 'User', with: @tx.user_id
    click_on 'Update Tx'

    assert_text 'Tx was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Tx' do
    visit tx_url(@tx)
    click_on 'Destroy this tx', match: :first

    assert_text 'Tx was successfully destroyed'
  end
end
