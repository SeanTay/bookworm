module BookHelper

  def check(book)
    if current_user.reads.find_by(book:book)
      return link_to image_tag("open.png"),
      read_book_path(@book, type: "read"), method: :put
    else
      return link_to image_tag("closed.png"), read_book_path(@book, type: "unread"), method: :put
    end
  end
end
