class Product < ActiveRecord::Base
  belongs_to :category
  enum role: ['HP', 'Apple', 'IBM']
  enum status: ['active', 'archived']
end
