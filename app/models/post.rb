class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: {minimum: 250}
  validates :summary, length: {maximum: 250}
  validates :category, inclusion: {in: %w[Fiction Non-Fiction]}
  validates_each :title do |record, attr, value|
    valid = [/Won't Believe/, /Secret/, /Top \d+/, /Guess/].any? do |regex|
      regex.match(value)
    end
  end
end
