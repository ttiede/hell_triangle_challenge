require 'test/unit'
require '../lib/triangle_hell'

class TriangleHellTest < Test::Unit::TestCase
  def test_success
    example = [[6], [3, 5], [9, 7, 1], [4, 6, 8, 4]]
    assert_equal(
      TriangleHell.maximum_total(example), 26, 'Proposed input [[6],[3,5],[9,7,1],[4,6,8,4]] did give the expected result 26.'
    )
  end

  def test_success_2
    example = [[6], [3, 5], [9, 7, 1], [4, 6, 8, 4], [4, 6, 8, 4, 5]]
    assert_equal(
      TriangleHell.maximum_total(example), 34, 'Proposed input [[6],[3,5],[9,7,1],[4,6,8,4][4, 6, 8, 4, 5]] didnt give the expected result 26.'
    )
  end

  def test_success_different_value
    example = [[6], [3, 5], [9, 7, 1], [4, 6, 8, 4]]
    assert_not_equal(
      TriangleHell.maximum_total(example), 34, 'Proposed input [[6],[3,5],[9,7,1],[4,6,8,4]] didnt give the expected result 26.'
    )
  end

  def test_assert
    example = []
    TriangleHell.maximum_total(example)
    assert_raise NameError do
      puts x # Raises NameError, so assertion succeeds
    end
  end
end
