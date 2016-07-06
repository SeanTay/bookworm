require_relative './book_data.rb'
require_relative './comment_data.rb'

Book.destroy_all
Comment.destroy_all

book_data = get_book_data()
comment_data = get_comment_data()

comment_data.each_pair do |book_name, comments|
  info = book_data[book_name]
  current_book = Book.create!({
    title:        info[:title],
    author:       info[:author],
    photo_url:    info[:photo_url],
  })

  comments.each do |comment|
    Comment.create!({
      subject:      comment[:subject],
      body:        comment[:body],
      book:        current_book
    })
  end
end
