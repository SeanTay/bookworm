class Read < ActiveRecord::Base
  belongs_to :users
  belongs_to :book
end
