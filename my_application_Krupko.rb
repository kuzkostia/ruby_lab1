module MyApplicationKuz
    require_relative 'main_application.rb'
    require_relative 'libs.rb'
  
    class MyApplicationSettings
      require_relative 'user.rb'
      include Singleton
  
      attr_accessor :web_address, :validator, :file_ext, :parse_item, :user
  
      def initialize
        @web_address = ""
        @validator = lambda { |page_count| page_count.between?(1, 100) }
        @file_ext = 'rb'
        @parse_item = /В наявності/ 
        @user = User.new('krupko.dmytro@chnu.edu.ua', 'email_password')
      end
    end
  end