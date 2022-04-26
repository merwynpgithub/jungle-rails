require 'rails_helper'

RSpec.describe Product, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  
  describe 'Validations' do
    # validation tests/examples here
    it 'should validate product name' do
      product_name = Product.new(name: nil)
      expect(product_name).to_not be_valid
    end
  end
end
