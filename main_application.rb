class MainApplication
  require_relative 'libs'

  @url=""

  def self.get_items
    parser = Parser.new(@url)

    items = parser.parse_item()
  
   items
  end


end