# 📚 Book Library CLI App

Welcome to the **Book Library CLI App** — a simple, beginner-friendly Ruby command-line application to manage your personal library of books.

This project is perfect for practicing **Object-Oriented Programming**, **file I/O**, and **JSON serialization** in Ruby. You can add, list, search, and delete books — and your data will be saved between runs using a JSON file.

---

## ✨ Features

- 📖 Add new books (title, author, genre)
- 📋 List all saved books
- 🔍 Search books by title, author, or genre
- ❌ Delete books
- 💾 Data is saved to a JSON file (`data/books.json`)

---

## 🧰 Technologies Used

- Ruby (no external gems required)
- JSON for data storage
- Simple file structure with classes

---

## 📦 Project Structure

book_library/
├── data/
│ └── books.json # Stored data file
├── lib/
│ ├── book.rb # Book class (model)
│ └── library.rb # Library class (manager)
├── main.rb # CLI entry point
└── README.md # Project overview

yaml
Copy
Edit

---

## 🚀 Getting Started

### 1. Clone the Repository
```bash
git clone https://github.com/your-username/book-library-cli.git
cd book-library-cli
2. Run the Application
bash
Copy
Edit
ruby main.rb
Make sure you have Ruby installed (ruby -v to check).

🧪 Example Usage
text
Copy
Edit
📚 Book Library App
1. List books
2. Add a book
3. Search books
4. Delete a book
5. Exit
Choose an option: 2

Title: The Hobbit
Author: J.R.R. Tolkien
Genre: Fantasy
✅ Book added.
🛠 How It Works
Books are represented by the Book class (lib/book.rb)

The library is managed by the Library class (lib/library.rb)

Data is saved/loaded as a JSON array of books in data/books.json

🧠 Learning Goals
Practice with Ruby classes, objects, methods, and attributes

Understand file reading/writing using JSON

Build your first CLI project without needing Rails or external gems

🌱 Future Ideas (Stretch Goals)
📌 Mark books as “read/unread”

🏷️ Add tags or ratings to books

📊 Export to .csv file

🌈 Use tty-prompt for better menus

🧪 Add unit tests with RSpec