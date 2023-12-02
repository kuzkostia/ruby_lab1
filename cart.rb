require 'csv'
require 'json'
require_relative 'item_container'

class Cart
  include ItemContainer

  attr_accessor :items,:total_price

  def initialize
    @items = []
    @total_price = 0
  end

  def save_to_file(filename, format = :json)
    
  end

  def save_to_json(filename)

  end

  def save_to_csv(filename)

  end
end