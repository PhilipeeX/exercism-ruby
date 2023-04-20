require 'pry-byebug'
class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    # binding.pry
    i = 0
    nomes = []
    while i < @items.size do 
      nomes[i] = @items[i][:name]
      i += 1
    end
    nomes.sort
  end

  def cheap
    # binding.pry
    itens_baratos = []
    @items.each do |item|
      if item[:price] < 30
        itens_baratos << item
      end
    end
    itens_baratos
  end

  def out_of_stock
    sem_estoque = []
    @items.each do |item|
      if item[:quantity_by_size].size == 0
        sem_estoque << item
      end
    end
    sem_estoque
  end

  def stock_for_item(name)
    # binding.pry
    @items.each do |item|
      if item[:name] == name
        return item[:quantity_by_size]
      end
    end
  end

  def total_stock
    estoque_total = 0;
    @items.each do |item|
      if item[:quantity_by_size].size > 0
        # binding.pry
        item[:quantity_by_size].each do |tamanho|
          estoque_total += tamanho[1]
        end
      end
    end
    estoque_total
  end

  private
  attr_reader :items
end
