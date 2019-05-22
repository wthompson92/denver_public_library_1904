require './lib/book'
require './lib/library'
require './lib/author.rb'
require 'minitest/autorun'
require 'minitest/pride'

class Library
  attr_reader :name

  def initialize(name)
    @name = name 
  end
end
