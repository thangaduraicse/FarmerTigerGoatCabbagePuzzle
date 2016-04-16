class Bank
	attr_accessor :farmer, :goat, :tiger, :cabbage
	def initialize (f,g,t,c)
		@farmer = f
		@goat = g
		@tiger = t
		@cabbage = c
	end
	def safe
		return !((@goat == @tiger) && (@goat != @farmer) || (@cabbage == @goat) && (@cabbage != @farmer))
	end
	def to_s
		"Farmer,Goat,Tiger,Cabbage [#{@farmer},#{@goat},#{tiger},#{cabbage}]"
	end
end