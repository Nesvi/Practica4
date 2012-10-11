require "ArithmeticTools"
require "test/unit"

class TestArithmeticTools < Test::Unit::TestCase  

  def test_simple

    @tested = ArithmeticTools.new
    
    assert_equal 1, @tested.Perimeter2Radius(6.2832)
    assert_equal 2, @tested.Perimeter2Radius(12.5664)
    assert_equal 1.59154570919277, @tested.Perimeter2Radius(10)

  end

  def test_typecheck
    @tested = ArithmeticTools.new

    assert_raise( RuntimeError ) { @tested.Perimeter2Radius('y') }
    assert_raise( RuntimeError ) { @tested.Perimeter2Radius(-1) }
  end
  

  def test_failure
    @tested = ArithmeticTools.new
    assert_in_delta(0.318471338, @tested.Perimeter2Radius(3) ,0.00001,"No son Iguales")
  end

end
