require 'spec_helper'

describe Product do

	before do
		@product = Product.new name: "Tunji", quantity: 4, price: 5.00
	end

	subject { @product }

	it { should respond_to(:name)}
	it { should respond_to(:quantity)}
	it { should respond_to(:price)}
	it { should_not respond_to(:age)}

	it { should be_valid }

	describe "when name is not present" do
		before do
			@product.name = ""
		end

		it { should_not be_valid }
	end

	describe "when quantity is not present" do
		before do
			@product.quantity = ""
		end

		it { should_not be_valid }
	end

	describe "when price is not present" do
		before do
			@product.price = ""
		end

		it { should_not be_valid }
	end

	describe "when quantity is not integer" do
		before do
			@product.quantity = 5.89
		end

		it { should_not be_valid }
	end
end