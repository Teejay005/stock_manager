require 'test_helper'

describe Product do

	let(:product_params) { {name: "Tunji", quantity: 4, price: 9.00} }

	let(:product) { Product.new product_params }

	it "should not save if name not present"  do
		product.name = nil
		product.wont_be :valid?
	end

	it "should not save if quantity not present"  do
		product.quantity = nil
		product.wont_be :valid?
	end

	it "should not save if quantity is not integer"  do
		product.quantity = 5.56
		product.wont_be :valid?
	end

	it "should not save if price not present"  do
		product.price = nil
		product.must_be :invalid?
	end

	it "should save if all conditions are met"  do
		product.must_be :valid?
	end

end
