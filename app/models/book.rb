class Book < ActiveRecord::Base
  has_many :comments
  has_many :reads
  has_many :users, through: :reads
end
