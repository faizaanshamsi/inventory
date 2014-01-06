class Entry < ActiveRecord::Base
  validates :title, length: { minimum: 1 }
  validates :description, length: { minimum: 1 }
  validates :quantity, length: { minimum: 1 }
end
