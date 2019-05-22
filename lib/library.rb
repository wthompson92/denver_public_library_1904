require './lib/book'
require './lib/library'
require './lib/author.rb'
require 'minitest/autorun'
require 'minitest/pride'

class Library
  attr_reader :name, :books, :authors

  def initialize(name)
    @name = name
    @books = []
    @authors = []
  end

  def add_author(author)
    @authors << author
    author.books.each do |book|
      @books << book
    end

    def add_books
      @authors.map do |author|
        author.books.map do |book|
          @books << book
        end
      end
    end


  def publication_time_frame_for(author)
    range_hash = Hash.new
    range_array = []
    author.books.each do |book|
    range_array << book.publication_year
      end
    range_array.sort.reverse!
    range_hash[:start] = range_array.last
    range_hash[:end] = range_array.first
  range_hash
end
end
end
