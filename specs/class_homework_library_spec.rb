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

  def test_book_rentail_details
    book1 = Book.new("Lord of the Rings", "Jeff", "01/12/16")
    book2 = Book.new("The Hitch Hiker's Guide to the Galaxy", "Alex", "22/10/18")
    library1 = Library.new([book1, book2])
    rental_details1 = {student_name: "Jeff", date: "01/12/16"}
    assert_equal(rental_details1, library1.find_rental_details("Lord of the Rings"))
  end

  def test_check_for_book__book_found
    book1 = Book.new("Lord of the Rings", "Jeff", "01/12/16")
    book2 = Book.new("The Hitch Hiker's Guide to the Galaxy", "Alex", "22/10/18")
    library1 = Library.new([book1, book2])
    assert_equal(true, library1.check_for_book("The Hitch Hiker's Guide to the Galaxy"))
  end

  def test_check_for_book__book_not_found
    book1 = Book.new("Lord of the Rings", "Jeff", "01/12/16")
    book2 = Book.new("The Hitch Hiker's Guide to the Galaxy", "Alex", "22/10/18")
    library1 = Library.new([book1, book2])
    assert_equal(false, library1.check_for_book("The Name of the Wind"))
  end

  def test_add_book_to_library
    book1 = Book.new("Lord of the Rings", "Jeff", "01/12/16")
    book2 = Book.new("The Hitch Hiker's Guide to the Galaxy", "Alex", "22/10/18")
    library1 = Library.new([book1, book2])
    library1.add_book_to_library("Clockwork Orange")
    assert_equal(true, library1.check_for_book("Clockwork Orange"))
  end

  def test_edit_rental_details
    book1 = Book.new("Lord of the Rings", "Jeff", "01/12/16")
    book2 = Book.new("The Hitch Hiker's Guide to the Galaxy", "Alex", "22/10/18")
    library1 = Library.new([book1, book2])
    library1.edit_rental_details("The Hitch Hiker's Guide to the Galaxy", "Catherine", "23/10/18")
    expected_rental_details = {student_name: "Catherine", date: "23/10/18"}
    assert_equal(expected_rental_details, library1.find_rental_details("The Hitch Hiker's Guide to the Galaxy"))
  end
end
