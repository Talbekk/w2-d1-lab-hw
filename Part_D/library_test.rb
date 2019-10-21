class Library

  attr_accessor :books

def initialize(books)
  @books = [ {
    title: "lord_of_the_rings",
    rental_details: {
     student_name: "Jeff",
     date: "01/12/16"
    }
  },
  {
    title: "casino royale",
    rental_details: {
      student_name: "Mike",
      date: "21/07/1980"
    }
  },
  {
    title: "lord of the flies",
    rental_details: {
      student_name: "Geraldine",
      date: "15/08/2022"
  }
  },
  {
    title: "1984",
    rental_details: {
      student_name: "Francesca",
      date: "22/10/2019"
  }
  }
]
end

def search_by_title(title)
  for book in @books
    if ( book[:title] == title)
      return book
    end
  end
end

def return_rental_details(title)
  for book in @books
    if ( book[:title] == title)
      return book[:rental_details]
    end
  end
end

def add_book(title)
  @books.push({
      title: "#{title}",
      rental_details: {
        student_name: "",
        date: ""
      }})
    end

def update_details(title, name, date)
  for book in @books
    if ( book[:title] == title )
      book[:rental_details][:student_name].replace(name)
      book[:rental_details][:date].replace(date)
     end
    end
  end



end
