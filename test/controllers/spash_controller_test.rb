require 'test_helper'

class SpashControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get spash_index_url
    assert_response :success
  end
end
