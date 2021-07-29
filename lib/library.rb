class Library
  attr_reader :name, :books, :authors

  def initialize(name)
    @name = name
    @books = []
    @authors = []
  end

  def add_author(author)
    @authors << author
    @books << author.books
    @books.flatten!
  end

  def publication_time_frame_for(author)
    expected = {}

    min = author.books.min_by do |book|
      book.publication_year
    end
    max = author.books.max_by do |book|
      book.publication_year
    end
    expected[:start] = min.publication_year
    expected[:end] = max.publication_year
    expected
  end

  def checkout(book)
    @books.include?(book)
  end

  def checked_out_books
    checked_out = []
    # binding.pry
    if checkout(book) == true

    end

  end
end
