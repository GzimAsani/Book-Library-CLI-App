require_relative 'lib/book.rb'
require_relative 'lib/library.rb'

library = Library.new

loop do
  puts " "
  puts " "
  puts "/n Welcome to Book Library App"
  sleep(1)
  puts "1. List books"
  puts "2. Add a book"
  puts "3. Search books"
  puts "4. Delete a book"
  puts "5. Exit"
  print "Choose an option: "

  choice = gets.chomp

  case choice
  when "1"
    library.list_books
  when "2"
    print "Title: "
    title = gets.chomp
    print "Author: "
    author = gets.chomp
    print "Genre: "
    genre = gets.chomp

    library.add_book(Book.new(title: title, author: author, genre: genre))
    puts "Adding it........."
    sleep (2)
    puts "Book added"

  when "3"
    print "Enter search term: "
    term = gets.chomp
    results = library.search_books(term)
    if results.empty?
      puts "No books found"
    else
      results.each_with_index do |book, i|
        puts "#{i + 1}. #{book.title} by #{book.author}, genre:#{book.genre}"
      end
    end
  when "4"
    library.list_books
    puts "Which book do you want to delete, please enter its corresponding number: "
    index = gets.chomp.to_i - 1
    library.delete_book(index)
    puts "Deleting it ....."
    sleep(1)
    puts "Book is correctly deleted"

  when "5"
    puts "Goodbye!"
    break
  else 
    puts "invalid option"
  end
end