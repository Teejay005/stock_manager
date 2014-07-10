require 'test_helper'

class ProductTest < ActiveSupport::TestCase

	def setup
		@product = Product.new name: "Tunji", quantity: 4, price: 9.00
	end

	test "should not save if name not present"  do
		@product.name = nil
		assert_not @product.save
	end

	test "should not save if quantity not present"  do
		@product.quantity = nil
		assert_not @product.save
	end

	test "should not save if quantity is not integer"  do
		@product.quantity = 5.56
		assert_not @product.save
	end

	test "should not save if price not present"  do
		@product.price = nil
		assert_not @product.save
	end

	test "should save if all conditions are met"  do
		puts @product.price
		assert @product.save
	end

	def teardown
		@product = nil
	end
end
