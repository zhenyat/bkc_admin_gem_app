class Category < ActiveRecord::Base
  has_many :products
  enum status: ['active', 'archived']
end
