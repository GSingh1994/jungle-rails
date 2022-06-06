require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
      subject {Product.new(name: 'sunflower', description: 'pretty plant that love sun', price: 1234, quantity: 23, category_id: 23 )}
      
      before {subject.save}

        it 'should have a name' do
          expect(subject.name).to be_present
        end

        it 'should have a price' do
          expect(subject.price).to be_present
        end

        it 'should have a quantity' do
          expect(subject.quantity).to be_present
        end

        it 'should have a category' do
          expect(subject.category_id).to be_present
        end

  end
end
