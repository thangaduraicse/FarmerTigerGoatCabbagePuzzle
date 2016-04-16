require "~/Documents/RiverBank"

east = Bank.new(true,true,true,true)
west = Bank.new(false,false,false,false)

def display(east,west)
	unless east.safe && west.safe
		abort("Game Over")
	else
		puts east.inspect
		puts west.inspect
	end
end
def opposite(state)
	return !state
end

begin
	choice = gets.chomp.downcase

	case choice
	when "farmer"
			east.farmer = !east.farmer
			west.farmer = !west.farmer
			display(east,west)
	when "tiger"
		if ((east.tiger==east.farmer) || (west.tiger==west.farmer))
			east.farmerState(opposite())
			east.farmer = !east.farmer
			east.tiger = !east.tiger
			west.farmer = !west.farmer
			west.tiger = !west.tiger
			display(east,west)
		else
			abort("Invalid Move")
		end
	when "goat"
		if ((east.goat==east.farmer) || (west.goat==west.farmer))
			east.farmer = !east.farmer
			east.goat = !east.goat
			west.farmer = !west.farmer
			west.goat = !west.goat
			display(east,west)
		else
			abort("Invalid Move")
		end
	when "cabbage"
		if ((east.cabbage==east.farmer) || (west.cabbage==west.farmer))

			east.farmer = !east.farmer
			east.cabbage = !east.cabbage
			west.farmer = !west.farmer
			west.cabbage = !west.cabbage
			display(east,west)
		else
			abort("Invalid Move")
		end
	else
		puts "Error in move for farmer"
	end
end until west.farmer == true && west.goat == true && west.tiger == true && west.cabbage == true

puts "Congratulation ! You moved all things shifted Successfully."
puts "If you want to play again, run the program"
puts "Game Over"