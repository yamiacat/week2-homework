class Library
  attr_accessor :books

  def initialize(books)
    @books = books
  end

  def find_book_by_title_and_return_details(searched_for_title)
    for volume in books
      return volume if volume[:title] == searched_for_title
    end
  end

  def find_book_by_title(searched_for_title)
    for volume in books
      return true if volume[:title] == searched_for_title
    end
  end

  def get_rental_details(searched_for_title)
    find_book_by_title_and_return_details(searched_for_title)[:rental_details]
  end

  def add_book_to_library(title_to_be_added)
    books.push({
      title: title_to_be_added,
      rental_details: {
        student_name: "",
        date: ""
      }
      })
  end

  def change_book_rental_details(title_to_be_amended, name, due_date)
    for volume in books
      if volume[:title] == title_to_be_amended
        volume[:rental_details] = {
          student_name: name,
          date: due_date
        }
      end
    end
  end


end
