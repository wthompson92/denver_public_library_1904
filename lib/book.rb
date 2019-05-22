class Book
  attr_reader :title, :author, :publication_year, :author_first_name, :author_last_name

  def initialize(hash)
    @author_first_name = hash[:author_first_name]
    @author_last_name = hash[:author_last_name]
    @author = hash[:author_first_name] + " " + hash[:author_last_name]
    @title = hash[:title]
    @publication_date = hash[:publication_date]
    @publication_year = @publication_date[-4..-1]
  end
end
