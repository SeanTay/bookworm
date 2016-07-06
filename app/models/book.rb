class Book < ActiveRecord::Base
  has_many :comments
  has_many :reads
  belongs_to :user
end
