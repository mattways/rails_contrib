require 'test_helper'

class ButtonTest < ActionView::TestCase
 
  test "should use button with span inside instead of input" do
    assert_equal '<button name="commit" type="submit"><span>Send</span></button>', submit_tag
  end

  test "should use the value as label" do
    assert_equal '<button name="commit" type="submit"><span>Other</span></button>', submit_tag('Other')
  end

  test "should accept options as attributes" do
    assert_equal '<button attribute="value" name="commit" type="submit"><span>Send</span></button>', submit_tag('Send', attribute: 'value')
  end

end
