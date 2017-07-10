require 'test_helper'

class AThousandWordControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get a_thousand_word_home_url
    assert_response :success
  end

end
