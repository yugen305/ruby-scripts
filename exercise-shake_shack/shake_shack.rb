# Shake Shack program

# Shake Shop class

class ShakeShop
	def initialize
		@milkshakes = []
	end

	def add_milkshake(milkshake)
		@milkshakes.push(milkshake)
	end

	def price_of_all_milkshakes
		total_price_of_all_milkshakes = 0
		
		@milkshakes.each do |milkshake|
			total_price_of_all_milkshakes += milkshake.price_of_milkshake
		end

		puts "\nYour total price for all milkshakes is #{total_price_of_all_milkshakes}$."
	end
end


# MilkShake class

class MilkShake
	def initialize
		@base_price = 3
		@ingredients = []
	end

	def add_ingredient(ingredient)
		@ingredients.push(ingredient)
	end

	def price_of_milkshake
  		total_price_of_milkshake = @base_price
  		@ingredients.each do |ingredient|
    		total_price_of_milkshake += ingredient.price
    	end

   		total_price_of_milkshake
  	end
end


# Ingredients class

class Ingredient
	attr_reader :name, :price

	def initialize(name, price)
		@name = name
		@price = price
	end
end

# All ingredients

banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
gummy_worms = Ingredient.new("Gummy Worms", 2)
caramel = Ingredient.new("Caramel", 3)
oreo = Ingredient.new("Oreo", 1)
m_and_m = Ingredient.new("M&M", 2)

# All Milkshakes

nizars_milkshake = MilkShake.new
nizars_milkshake.add_ingredient(banana)
nizars_milkshake.add_ingredient(chocolate_chips)

joannas_milkshake = MilkShake.new
joannas_milkshake.add_ingredient(oreo)
joannas_milkshake.add_ingredient(m_and_m)

dannys_milkshake = MilkShake.new
dannys_milkshake.add_ingredient(gummy_worms)
dannys_milkshake.add_ingredient(banana)

# Add up all milkshakes

all_milkshakes = ShakeShop.new
all_milkshakes.add_milkshake(nizars_milkshake)
all_milkshakes.add_milkshake(joannas_milkshake)
all_milkshakes.add_milkshake(dannys_milkshake)



puts all_milkshakes.price_of_all_milkshakes









