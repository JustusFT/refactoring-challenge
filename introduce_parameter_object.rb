# introduce_parameter_object.rb
#http://refactoring.com/catalog/introduceParameterObject.html

class GamePackageCalculator

	BASIC_PACKAGE_FACTOR = 1.0
	PREMIUM_PACKAGE_FACTOR = 2.1
	BASIC_RATE = 1
	PREMIUM_RATE = 2
	GOLD_LIFE_RATIO = 0.2
	POWERUPS_LIFE_RATIO = 0.5


	#calculates the cost of a gamer who wants to get X gold, Y powerup and number of lives derived from X gold and Y powerup.
	def calculate_cost(data, premium = nil)

		lives = calculate_lives(data)

		if premium # ew, P2W?
			premium_cost(data)
		else
			basic_cost(data)
		end
	end

	private

	def calculate_lives(data)
		(data[:gold] * GOLD_LIFE_RATIO ).round(0) + (data[:powerups] * POWERUPS_LIFE_RATIO).round(0)
	end


	def premium_cost(lives, data)
		PREMIUM_PACKAGE_FACTOR * data[:lives] + PREMIUM_RATE * (data[:gold] + data[:powerups])
	end

	def basic_cost(lives, gold, powerups)
		BASIC_PACKAGE_FACTOR * data[:lives] + BASIC_RATE * (data[:gold] + data[:powerups])
	end

end
