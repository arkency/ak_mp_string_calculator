require 'test/unit'

class StringCalculatorTest < Test::Unit::TestCase
  
  def test_truth
    assert_equal(true, true)
  end

  def test_empty_string_should_sum_to_zero
    calc = Calculator.new
    assert_equal(calc.add(""), 0)
  end

  def test_single_number_should_sum_to_itself
    calc = Calculator.new
    assert_equal(calc.add("123"), 123)
  end

  def test_1_plus_2_should_sum_to_3
    calc = Calculator.new
    assert_equal(calc.add("1,2"), 3)
  end

  def test_newlines_are_good_delimiters_too
    calc = Calculator.new
    assert_equal(calc.add("1\n2,3"), 6)
  end

end

class Calculator
  def add(expression)
    expression.split(",").map(&:to_i).inject(0, :+)
  end
end
