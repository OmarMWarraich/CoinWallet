require 'test_helper'

class TxesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tx = txes(:one)
  end

  test 'should get index' do
    get txes_url
    assert_response :success
  end

  test 'should get new' do
    get new_tx_url
    assert_response :success
  end

  test 'should create tx' do
    assert_difference('Tx.count') do
      post txes_url,
           params: { tx: { amount: @tx.amount, author_id: @tx.author_id, commodity_id: @tx.commodity_id, name: @tx.name,
                           user_id: @tx.user_id } }
    end

    assert_redirected_to tx_url(Tx.last)
  end

  test 'should show tx' do
    get tx_url(@tx)
    assert_response :success
  end

  test 'should get edit' do
    get edit_tx_url(@tx)
    assert_response :success
  end

  test 'should update tx' do
    patch tx_url(@tx),
          params: { tx: { amount: @tx.amount, author_id: @tx.author_id, commodity_id: @tx.commodity_id, name: @tx.name,
                          user_id: @tx.user_id } }
    assert_redirected_to tx_url(@tx)
  end

  test 'should destroy tx' do
    assert_difference('Tx.count', -1) do
      delete tx_url(@tx)
    end

    assert_redirected_to txes_url
  end
end
