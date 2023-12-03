class MainApplication
  require_relative 'libs'
  @@path_for_csv = "D:/Study/Ruby/Csv"
  @@path_for_json = "D:/Study/Ruby/Json"

  @url="https://rozetka.com.ua/ua/notebooks/c80004"

  def self.get_items
    parser = Parser.new(@url)

    items = parser.parse_item(
      
     '[class="goods-tile__availability goods-tile__availability--available ng-star-inserted"]',
     /Готовий до відправлення/,
     {

      name: '[class="goods-tile__title"]',
      price: '[class="goods-tile__price-value"]',
      old_price: '[class="goods-tile__price--old price--gray ng-star-inserted"]',
      availability: '[class="goods-tile__availability goods-tile__availability--available ng-star-inserted"]'

     }


    )
  
   items
  end


end