require 'application_system_test_case'

class CommoditiesTest < ApplicationSystemTestCase
  setup do
    @commodity = commodities(:one)
  end

  test 'visiting the index' do
    visit commodities_url
    assert_selector 'h1', text: 'Commodities'
  end

  test 'should create commodity' do
    visit commodities_url
    click_on 'New commodity'

    fill_in 'Icon', with: @commodity.icon
    fill_in 'Name', with: @commodity.name
    fill_in 'User', with: @commodity.user_id
    click_on 'Create Commodity'

    assert_text 'Commodity was successfully created'
    click_on 'Back'
  end

  test 'should update Commodity' do
    visit commodity_url(@commodity)
    click_on 'Edit this commodity', match: :first

    fill_in 'Icon', with: @commodity.icon
    fill_in 'Name', with: @commodity.name
    fill_in 'User', with: @commodity.user_id
    click_on 'Update Commodity'

    assert_text 'Commodity was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Commodity' do
    visit commodity_url(@commodity)
    click_on 'Destroy this commodity', match: :first

    assert_text 'Commodity was successfully destroyed'
  end
end
