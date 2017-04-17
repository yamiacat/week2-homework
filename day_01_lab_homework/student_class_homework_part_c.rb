class Library
   attr_accessor :books

  def initialize(books)
    @books = books
  end

  def find_book_by_title(searched_for_title)
    for volume in books
      return volume if volume[:title] == searched_for_title
    end
  end

  def get_rental_details(searched_for_title)
    find_book_by_title(searched_for_title)[:rental_details]
  end

  def add_book_to_library(title_to_be_added)
    books[title_to_be_added] = :rental_details
  end





end
