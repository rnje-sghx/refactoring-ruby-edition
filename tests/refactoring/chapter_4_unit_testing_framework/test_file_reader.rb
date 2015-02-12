require 'tests_helper'


class TestRefactoring::TestChapter4UnitTestingFramework::TestFileReader < Test::Unit::TestCase
  def test_read_4th_character
    contents = File.read('tests/fixtures/data.txt')
    assert_equal 'd', contents[3, 1]
  end

  def test_read_with_a_length_specified
    contents = File.read('tests/fixtures/data.txt', 11)
    assert_equal 'Bradman 99.', contents
  end

  def test_read_empty_file_returns_empty_string
    File.open('tests/fixtures/empty_data.txt', 'w') {}
    contents = File.read('tests/fixtures/empty_data.txt')
    assert_equal '', contents
  end

  def test_read_an_out_of_bounds_length_causes_no_error
    File.open('tests/fixtures/simple_data.txt', 'w') { |file| file << 'simple file' }
    contents = File.read('tests/fixtures/simple_data.txt', 100)
    assert_equal 'simple file', contents
  end

  def test_read_raises_error_when_file_not_found
    assert_raises Errno::ENOENT do
      File.read('tests/fixtures/datas.txt')
    end
  end
end
