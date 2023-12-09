class MainApplication
  require_relative 'libs'
  

  @url="https://eldorado.ua/uk/notebooks/c1039096/"

  def self.get_items
    parser = Parser.new(@url)

    items = parser.parse_item(
      
     '[class="ui-library-body3Regular-537a TileBlockstyled__StyledGoodsSellStatus-sc-ogrpyx-9 bVaTxt"]',
     /В наявності/,
     {

      name: '[class="TileBlockstyled__StyledTileBlockContent-sc-ogrpyx-0 bpirFC"] [class="TileBlockstyled__StyledTileBlockBody-sc-ogrpyx-16 hqbgMn"] [class="GoodsDescriptionstyled__StyledLinkWrapper-sc-1c1eyhs-0 gbyxYE"]',
      price: '[class="Pricestyled__StyledPrice-sc-vfsrh8-0 lkgQIt"] [class="Pricestyled__StyledPriceWrapper-sc-vfsrh8-2 gPRKnx ui-library-gridItem-e24a ui-library-gridFlow-6fac"] [class="Pricestyled__StyledCurrentPrice-sc-vfsrh8-4 jUqRwo"]',
      #price: '[class="ui-library-body2Bold-35f5"]',
      old_price: '[class="ui-library-body2Regular-7f98 ui-library-lineThrough-cd39"]',
      availability: '[class="ui-library-body3Regular-537a TileBlockstyled__StyledGoodsSellStatus-sc-ogrpyx-9 bVaTxt"]'

     }
      

    )
  
   items
  end


end