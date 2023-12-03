require_relative "libs"
require 'nokogiri'
require 'open-uri'

class Parser

  def initialize(url)
    @url = url
  end


  def parse_item(selection_condition, value_regex = /./, attribute_selectors = {})
    html = Nokogiri::HTML(URI.open(@url))
    #gallery_items = html.css('[class="product_block"]')
    #item_type = html.at_css('ol[class="breadcrumbs_seo"] li[class="breadcrumbs_seo_item"]:last-child')&.text&.strip

    items = []

    gallery_items.each do |product_block|
      next unless product_block.at_css("#{selection_condition}:contains('#{value_regex.source}')")

      item_data = {}

      attribute_selectors.each do |attribute, selector|
        item_data[attribute] = product_block.at_css(selector)&.text&.strip
      end

      item_data[:availability] = get_availability_value(item_data[:availability])

      items << Item.new(item_data[:name], item_type, item_data[:price], item_data[:old_price], item_data[:availability])
  
    end
    items
  end
  def get_availability_value(availability)
    availability == 'Готовий до відправлення' ? true : false
  end

end