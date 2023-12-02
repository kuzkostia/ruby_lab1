require_relative "libs"
require 'nokogiri'
require 'open-uri'

class Parser

  def initialize(url)
    @url = url
  end


  def parse_item(selection_condition, value_regex = /./, attribute_selectors = {})
    
  end

end