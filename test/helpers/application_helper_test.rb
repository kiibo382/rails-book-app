require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,         "BookLike"
    assert_equal full_title("Help"), "Help|BookLike"
  end
end