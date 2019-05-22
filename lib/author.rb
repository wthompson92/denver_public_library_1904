class Author
  attr_reader :name, :books

  def initialize(hash)
    @first_name = hash[:first_name]
    @last_name = hash[:last_name]
    @name = hash[:first_name] + " " + hash[:last_name]
    @books = []
  end

  def write(title, pub_date)
 new_book = Book.new({author_first_name: @first_name, author_last_name: @last_name, title: title, publication_date: pub_date})
    @books << new_book
  end
end
