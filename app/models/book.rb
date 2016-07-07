class Book < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  has_many :reads, dependent: :destroy
  belongs_to :user
end
