def get_book_data
  book_data = {
    "Letters from a Stoic" => {
                  title: "Letters from a Stoic",
                  author: "Lucius Annaeus Seneca",
                  photo_url:"https://images-na.ssl-images-amazon.com/images/I/51Cg176Bn1L._SX326_BO1,204,203,200_.jpg",
                  has_read: true
                  },
    "The Icarus Deception" => {
                  title: "The Icarus Deception",
                  author: "Seth Godin",
                  photo_url:"https://images-na.ssl-images-amazon.com/images/I/511Byv2Z2hL._SX333_BO1,204,203,200_.jpg",
                  has_read: true
                  }
              }
  return book_data
end
