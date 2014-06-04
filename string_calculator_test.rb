require 'test/unit'

class StringCalculatorTest < Test::Unit::TestCase
  
  def test_truth
    assert_equal(true, true)
  end

  def test_empty_string_should_sum_to_zero
    calc = Calculator.new
    assert_equal(calc.add(""), 0)
  end
end

