class Book
  attr_accessor :title, :author, :genre

  def initialize(title:, author:, genre:)
    @title = title
    @author = author
    @genre = genre
  end

  def to_hash
    {
      title: title,
      author: author,
      genre: genre
    }
  end

  def self.from_hash(hash)
    # p "test #{hash}"
    new(title: hash["title"], author: hash["author"], genre: hash["genre"])
  end

end

# hash = { "title" => "The Hobbit", "author" => "J.R.R. Tolkien", "genre" => "Fantasy" }


# p Book.from_hash(hash)


