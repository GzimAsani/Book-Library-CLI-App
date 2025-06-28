require 'json'
require_relative 'book'

class Library
  FILE_PATH = 'data/books.json'

  def initialize
    @books = load_books
  end

  def add_book(book)
    @books << book
    save_books
  end

  def list_books
    @books.each_with_index do |book, i|
      puts "#{i + 1}. #{book.title} by #{book.author}, genre: #{book.genre}"
    end
  end

  def search_books(term)
    @books.select do |book|
      [book.title, book.author, book.genre].any? { |field| field.downcase.include?(term.downcase) }
    end
  end

  def delete_book(index)
    @books.delete_at(index)
    save_books
  end

  private

  def load_books
    return [] unless File.exist?(FILE_PATH)

    json = File.read(FILE_PATH)
    data = JSON.parse(json)
    data.map { |book_hash| Book.from_hash(book_hash) }
  end

  def save_books
    data = @books.map(&:to_hash)
    File.write(FILE_PATH, JSON.pretty_generate(data))
  end
end

# library = Library.new

# books = [
#   Book.new(title: "1984", author: "Orwell", genre: "Dystopian"),
#   Book.new(title: "The Hobbit", author: "Tolkien", genre: "Fantasy")
# ]

# books.each { |book| library.add_book(book) }
