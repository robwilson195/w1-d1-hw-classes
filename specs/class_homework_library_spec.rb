require('minitest/autorun')
require('minitest/rg')
require_relative('../classes_homework')

class Testclasses < MiniTest::Test

  def test_get_books
    book1 = Book.new("Lord of the Rings", "Jeff", "01/12/16")
    book2 = Book.new("The Hitch Hiker's Guide to the Galaxy", "Alex", "22/10/18")
    library1 = Library.new([book1, book2])
    assert_equal([book1, book2], library1.books)
  end

  def test_book_info
    book1 = Book.new("Lord of the Rings", "Jeff", "01/12/16")
    book2 = Book.new("The Hitch Hiker's Guide to the Galaxy", "Alex", "22/10/18")
    library1 = Library.new([book1, book2])
    assert_equal(book1, library1.book_info("Lord of the Rings"))
  end
end
