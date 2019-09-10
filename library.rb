class Library

  attr_accessor :books

    def initialize(books)
      @books = books
    end

    def find_book(title)
      for book in @books
        if title == book[:title]
          return book
        end
      end
      return nil
    end

    def find_renting_info(title)
      found_book = find_book(title)
        return found_book[:rental_details] if found_book != nil
    end

    def add_book(new_book_title)
      new_book = { title: new_book_title, rental_details: { student_name: "", date: ""}}
      @books.push(new_book)
    end

    def rent_book(title, student, date)
      renting_info = find_renting_info(title)
      renting_info[:student_name] = student
      renting_info[:date] = date
    end

end
