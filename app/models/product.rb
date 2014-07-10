class Product < ActiveRecord::Base
	validates :name, presence: true
	validates :quantity, presence: true, numericality: { only_integer: true}
	validates :price, presence: true
end
