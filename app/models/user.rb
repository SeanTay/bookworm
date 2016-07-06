class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :books, through: :reads
  has_many :comments, dependent: :destroy
  has_many :reads

  # def has_read?(book)
  #   self.reads.include?(book)
  # end
end
