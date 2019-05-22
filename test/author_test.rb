require './lib/book'
require './lib/author.rb'
require 'minitest/autorun'
require 'minitest/pride'

class AuthorTest < MiniTest::Test

  def setup
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
  end

  def test_it_exists
    expected = Author
    actual = @charlotte_bronte
  assert_instance_of expected, actual
  end

  def test_it_has_attributes
    expected = "Charlotte Bronte"
    actual = @charlotte_bronte.name
    assert_equal expected, actual
  expected = []
  actual = @charlotte_bronte.books
  assert_equal expected, actual
  end

  def test_author_writing_books_creates_new_instance_of_book_class
    jane_eyre = @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    expected = Book
    actual = jane_eyre
    assert_instance_of expected, actual
  end

  def test_updated_books_array
    @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    @charlotte_bronte.write("Villette", "1853")
    expected = []
    actual = @charlotte_bronte.books
    assert_equal expected, actual
  end
end
