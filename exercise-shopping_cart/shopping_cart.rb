# Shopping cart exercise

require 'date'

# Classes

class ShoppingCart
	def initialize
		@default_price = 0
		@items = []
	end

	def add_item(item)
    @items.push(item)
  	end

  	def item_counter
  		@items.length
  	end

  	def checkout
  		total_price = @default_price
		@items.each do |item|
			if item_counter <= 5
    		total_price += item.price
    		else
    		total_price = item.price * 0.95 + total_price
			end
		end
	puts "Your total today is #{total_price} Have a nice day!"
	end
end

class Item
	attr_reader :name, :price
  def initialize(name, price)
      @name = name
      @price = price
  end

# By default, items will have no discount

  def price
  	price = @price
    end
end

# Houseware will have 5% discount if the price is greater than 100
class Houseware < Item
	attr_reader :price
	def price 
			if @price > 100
				@price *= 0.95
			else
				@price
			end			
		end
	end

#Fruits have no discount during weekdays but on weekends they have a 10% discount
class Fruit < Item
	attr_reader :price
	def price
		if Date.today.wday == 0 || Date.today.wday == 6
			@price *= 0.9
		else
			@price
		end
		end
	end

# Cart

eli_cart = ShoppingCart.new
bananas = Fruit.new("Bananas", 10)
oj = Item.new("Orange Juice", 10)
rice = Item.new("Rice", 1)
vacuum = Houseware.new("Vacuum", 150)
anchovies = Item.new("Anchovies", 2)
oranges = Fruit.new("Oranges", 15)
duster = Houseware.new("Duster", 50)

eli_cart.add_item(oj)
eli_cart.add_item(vacuum)
eli_cart.add_item(bananas)
eli_cart.add_item(duster)
eli_cart.add_item(anchovies)
eli_cart.add_item(rice)

eli_cart.checkout
