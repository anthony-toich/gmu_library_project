module BooksHelper
  def formatted_time(time)
    time.strftime("%B %d, %Y at %l:%M %p")
    end

def formatted_date(date)
    date.strftime("%B %d, %Y")
    end

    end