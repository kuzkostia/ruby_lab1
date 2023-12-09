class Item

  attr_accessor :name,:type,:price,:old_price,:availability

  def initialize(name,type,price,old_price,availability = false)
    @name,@type,@price,@old_price,@availability = name,type,price,old_price,availability
  end

  def info
    if block_given?
      yield(self)
    else
      self.to_s
    end
  end

  def <=>(other_item)
    self.price <=> other_item.price
  end

  
  def to_s
    "Item: #{@name}, Type: #{@type}, Price: #{@price}, Old price: #{@old_price}, Is available: #{@availability}"
  end

  def to_h
    {
      name: @name,
      type: @type,
      price: @price,
      old_price: @old_price,
      availability: @availability
    }

  end
end