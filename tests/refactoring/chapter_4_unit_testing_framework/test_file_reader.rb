require 'tests_helper'


class TestRefactoring::TestChapter4UnitTestingFramework::TestFileReader < Test::Unit::TestCase
  def test_read_4th_character
    contents = File.read('tests/fixtures/data.txt')
    assert_equal 'd', contents[3,1]
  end
end
