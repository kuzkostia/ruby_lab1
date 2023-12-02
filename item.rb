class Item

  attr_accessor :name,:type,:price,:shop,:availability

  def initialize(name,type,price,shop,availability = false)
    @name,@type,@price,@shop,@availability = name,type,price,shop,availability
  end

  def info

  end

  
  def to_s

  end

  def to_h

  end
end