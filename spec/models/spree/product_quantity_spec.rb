require 'spec_helper'

describe Spree::Product do
  describe "#quantity_unit" do
    it "returns the unit if it is present" do
      product = create(:product, quantity_unit: "kg")
      expected = "kg"

      result = product.quantity_unit
      expect(result).to eq(expected)
    end

    it "returns default of 'un' if not set" do 
      product = create(:product)
      expected = "un"

      result = product.quantity_unit
      expect(result).to eq(expected)
    end
  end
  
  describe "#quantity_increment" do
    it "returns the increment if set" do
      product = create(:product, quantity_increment: 2)
      expected = 2

      result = product.quantity_increment
      expect(result).to eq(expected)
    end
    
    it "returns the default of 1 if not set" do
      product = create(:product)
      expected = 1

      result = product.quantity_increment
      expect(result).to eq(expected)      
    end
  end

  describe "#quantity_minimum" do
    it "returns the minimum if set" do
      product = create(:product, quantity_minimum: 100)
      expected = 100

      result = product.quantity_minimum
      expect(result).to eq(expected)
    end
    
    it "returns the default of 1 if not set" do
      product = create(:product)
      expected = 1

      result = product.quantity_minimum
      expect(result).to eq(expected)      
    end
  end

  describe "#quantity_maximum" do
    it "returns the maximum if set" do
      product = create(:product, quantity_maximum: 20000)
      expected = 20000

      result = product.quantity_maximum
      expect(result).to eq(expected)
    end
    
    it "returns the nil if not set" do
      product = create(:product)
      expected = nil

      result = product.quantity_maximum
      expect(result).to eq(expected)      
    end
  end
end

  
    