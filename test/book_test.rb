require './lib/book'
require 'minitest/autorun'
require 'minitest/pride'

class BookTest < MiniTest::Test

  def setup
    @book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
  end

  def test_it_exists
    expected = Book
    actual = @book
  assert_instance_of expected, actual
  end

  def test_it_has_attributes
  expected = "To Kill a Mockingbird"
  actual = @book.title
  assert_equal expected, actual
  expected = "Harper Lee"
  actual = @book.author
  assert_equal expected, actual
  expected = "1960"
  actual = @book.publication_year
  assert_equal expected, actual
end

end
