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


