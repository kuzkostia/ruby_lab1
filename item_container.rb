module ItemContainer
  module ClassMethods
    def total_price(cart)
      cart.total_price = 0.0

      end
    end
  end

  module InstanceMethods
    def add_item(product, quantity = 1)

    end

    def remove_item(item)

    end

    def delete_items

    end

    def method_missing(method, *args, &block)
      
    end

  end

  def self.included(class_instance)
    class_instance.extend(ClassMethods)
    class_instance.send(:include, InstanceMethods)
  end

end