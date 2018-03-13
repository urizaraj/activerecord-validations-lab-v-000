class Author < ActiveRecord::Base
  validates :name, uniqueness: true, presence: true
  validates :phone_number, length: 10
end
