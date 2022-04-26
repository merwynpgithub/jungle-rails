require 'rails_helper'

RSpec.describe Product, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  
  describe 'Validations' do
    # validation tests/examples here
    it 'should validate a product with valid fields' do
      cat2 = Category.find_or_create_by! name: 'Electronics'

      new_product = cat2.products.create!({
        name:  'Groovy Ball',
        description: 'Glowing Ball',
        quantity: 2,
        price: 15
      })
      expect(new_product).to be_valid
    end

    it 'should validate product name' do
      product = Product.new(name: nil)
      expect(product).to_not be_valid
    end

    it 'should validate product price' do
      product = Product.new(price_cents: nil)
      expect(product).to_not be_valid
    end

    
  end
end
