
# Seed Decks / Cards

# states_capitals = Deck.create(name: "US: state capitals")

# CSV.foreach("States.csv", headers: true) do |row|
#   states_capitals.cards << Card.create(question: "What is the capital of " + row.field('name') + "?", answer: row.field('capital'))
# end

# most_populous_city_by_state = Deck.create(name: "US: most populous city per state")

# CSV.foreach("States.csv", headers: true) do |row|
#   most_populous_city_by_state.cards << Card.create(question: "What is the most populous city in " + row.field('name') + "?", answer: row.field('most populous city'))
# end


#create 2 decks addition, subtraction. Use the Math class. 


addition_game = Deck.create(name: "Addition")
subtraction_game = Deck.create(name: "Subtraction")


start_num = 1
incrementing_num = 1
answer_num = 2
10.times do |num|
	addition_game.cards << Card.create(question: "What is #{start_num} + #{incrementing_num}?", 
										answer: "#{answer_num}")
	incrementing_num += 1
	answer_num       += 1
end




start_num = 1
decreasing_num = 10
answer_num = 9
10.times do |num|
	subtraction_game.cards << Card.create(question: "What is #{start_num} - #{decreasing_num}?", 
										  answer: "#{answer_num}")
	decreasing_num -= 1
	answer_num       -= 1
end