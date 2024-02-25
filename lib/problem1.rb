class VendingMachine
  attr_reader :bottles
  def initialize(bottles = 20)
    @bottles = bottles
  end
  def purchase(amount)
    @bottles -= amount
  end

  def restock(amount)
    @bottles += amount
  end
  def get_inventory
      puts @bottles
  end
  def report
      puts "Inventory: #{@bottles} bottles"
  end
end

bottleorder = VendingMachine.new(20)
bottleorder.purchase(5)
bottleorder.restock(2)
bottleorder.get_inventory()
bottleorder.report()
