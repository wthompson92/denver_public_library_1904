class Author
  attr_reader :first_name, :last_name

  def initialize(hash)
    @name =  hash[:first_name] + hash[:last_name]
    @books = []
  end

end
