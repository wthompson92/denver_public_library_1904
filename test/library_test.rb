require './lib/book'
require './lib/library'
require './lib/author.rb'
require 'minitest/autorun'
require 'minitest/pride'

class LibraryTest < MiniTest::Test

  def setup
    @dpl = Library.new("Denver Public Library")
    @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    @professor = @charlotte_bronte.write("The Professor", "1857")
    @charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    @villette = @charlotte_bronte.write("Villette", "1853")
    @harper_lee = Author.new({first_name: "Harper", last_name: "Lee"})
    @mockingbird = @harper_lee.write("To Kill a Mockingbird", "July 11, 1960")
  end

  def test_it_exists
    expected = Library
    actual = @dpl
  assert_instance_of expected, actual
  end

  def test_it_has_attributes
    expected = "Denver Public Library"
    actual = @dpl.name
    assert_equal expected, actual
    expected = []
    actual = @dpl.books
    assert_equal expected, actual
    expected = []
    actual = @dpl.authors
    assert_equal expected, actual
  end

  def test_lib_can_add_authors_and_books
    @dpl.add_author(@charlotte_bronte)
    @dpl.add_author(@harper_lee)
    @dpl.add_books
    expected = [@charlotte_bronte, @harper_lee]
    actual = @dpl.authors
    assert_equal expected, actual
    actual = @dpl.books
    refute actual.empty?
  end

  def test_pub_time_frame
    @dpl.add_author(@harper_lee)
    expected = {:start=>"1960", :end=>"1960"}
    actual = @dpl.publication_time_frame_for(@harper_lee)
    assert_equal expected, actual
    @dpl.add_author(@charlotte_bronte)
    expected = {:start=>"1853", :end=>"1857"}
    actual = @dpl.publication_time_frame_for(@charlotte_bronte)
    assert_equal expected, actual
  end
end
