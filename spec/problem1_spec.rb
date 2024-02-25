require 'problem1'
RSpec.describe VendingMachine do
  let(:bottlesnum) {VendingMachine.new}

  describe "#purchase" do
    it "number of bottles being purchased and final amount of inventory after purchase" do
      bottlesnum.purchase(5)
      expect(bottlesnum.bottles).to eq(15)
    end
  end

  describe "#restock" do
    it "number of bottles being restocked and final amount of inventory after restock" do
      bottlesnum.purchase(5)
      bottlesnum.restock(2)
      expect(bottlesnum.bottles).to eq(17)
    end
  end

  describe "#get_inventory" do
    it "puts final number of bottles after purchase and restock" do
      bottlesnum.purchase(5)
      bottlesnum.restock(2)
      bottlesnum.get_inventory
      expect(bottlesnum.bottles).to eq(17)
    end
  end
  describe "#report" do
    it "puts final number of bottles after purchase and restock" do
      bottlesnum.purchase(5)
      bottlesnum.restock(2)
      bottlesnum.get_inventory
      bottlesnum.report
      expect(bottlesnum.bottles).to eq(17)
    end
  end
end
