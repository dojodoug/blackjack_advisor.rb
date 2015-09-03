cards = 0
players_hand = {}
players_hand[:cards] = []
first_card = 0
second_card = 0
dealers_card = 0

### HARD HASH ###

hard_hash = Hash.new()

(5..9).each do |i|
  hard_hash[i] = Hash.new("Hit")
end

  hard_hash[8][5] = "Double if possible, otherwise hit"
  hard_hash[8][6] = "Double if possible, otherwise hit"
  hard_hash[9][2] = "Double if possible, otherwise hit"
  hard_hash[9][3] = "Double if possible, otherwise hit"
  hard_hash[9][4] = "Double if possible, otherwise hit"
  hard_hash[9][5] = "Double if possible, otherwise hit"
  hard_hash[9][6] = "Double if possible, otherwise hit"

(10..11).each do |i|
  hard_hash[i] = "Double if possible, otherwise hit"
end

  hard_hash[10][10] = "Hit"
  hard_hash[10][11] = "Hit"

(12..21).each do |i|
  hard_hash[i] = Hash.new("Stay")
end

  hard_hash[12][2] = "Hit"
  hard_hash[12][3] = "Hit"

  hard_hash[12][7] = "Hit"
  hard_hash[12][8] = "Hit"
  hard_hash[12][9] = "Hit"
  hard_hash[12][10] = "Hit"
  hard_hash[12][11] = "Hit"

  hard_hash[13][7] = "Hit"
  hard_hash[13][8] = "Hit"
  hard_hash[13][9] = "Hit"
  hard_hash[13][10] = "Hit"
  hard_hash[13][11] = "Hit"

  hard_hash[14][7] = "Hit"
  hard_hash[14][8] = "Hit"
  hard_hash[14][9] = "Hit"
  hard_hash[14][10] = "Hit"
  hard_hash[14][11] = "Hit"

  hard_hash[15][7] = "Hit"
  hard_hash[15][8] = "Hit"
  hard_hash[15][9] = "Hit"
  hard_hash[15][10] = "Hit"
  hard_hash[15][11] = "Hit"

### SOFT HASH ###

soft_hash = Hash.new()

(13..17).each do |i|
  soft_hash[i] = Hash.new("Hit")
end

  soft_hash[13][4] = "Double if possible, otherwise hit"
  soft_hash[13][5] = "Double if possible, otherwise hit"
  soft_hash[13][6] = "Double if possible, otherwise hit"

  soft_hash[14][4] = "Double if possible, otherwise hit"
  soft_hash[14][5] = "Double if possible, otherwise hit"
  soft_hash[14][6] = "Double if possible, otherwise hit"

  soft_hash[15][4] = "Double if possible, otherwise hit"
  soft_hash[15][5] = "Double if possible, otherwise hit"
  soft_hash[15][6] = "Double if possible, otherwise hit"

  soft_hash[16][4] = "Double if possible, otherwise hit"
  soft_hash[16][5] = "Double if possible, otherwise hit"
  soft_hash[16][6] = "Double if possible, otherwise hit"

  soft_hash[17][2] = "Double if possible, otherwise hit"
  soft_hash[17][3] = "Double if possible, otherwise hit"
  soft_hash[17][4] = "Double if possible, otherwise hit"
  soft_hash[17][5] = "Double if possible, otherwise hit"
  soft_hash[17][6] = "Double if possible, otherwise hit"

(18..21).each do |i|
  soft_hash[i] = Hash.new("Stay")
end

  soft_hash[18][3] = "Double if possible, otherwise stay"
  soft_hash[18][4] = "Double if possible, otherwise stay"
  soft_hash[18][5] = "Double if possible, otherwise stay"
  soft_hash[18][6] = "Double if possible, otherwise stay"

  soft_hash[18][9] = "Hit"
  soft_hash[18][10] = "Hit"

  soft_hash[19][6] = "Double if possible, otherwise stay"

### PAIR HASH ###

pair_hash = Hash.new()

(4..18).each do |i|
  pair_hash[i] = Hash.new("Split")
end

  pair_hash[4][8] = "Hit"
  pair_hash[4][9] = "Hit"
  pair_hash[4][10] = "Hit"
  pair_hash[4][22] = "Hit"

  pair_hash[6][9] = "Hit"
  pair_hash[6][10] = "Hit"
  pair_hash[6][22] = "Hit"

  pair_hash[8][2] = "Hit"
  pair_hash[8][3] = "Hit"

  pair_hash[8][7] = "Hit"
  pair_hash[8][8] = "Hit"
  pair_hash[8][9] = "Hit"
  pair_hash[8][10] = "Hit"
  pair_hash[8][22] = "Hit"

  pair_hash[10][2] = "Double if possible, otherwise hit"
  pair_hash[10][3] = "Double if possible, otherwise hit"
  pair_hash[10][4] = "Double if possible, otherwise hit"
  pair_hash[10][5] = "Double if possible, otherwise hit"
  pair_hash[10][6] = "Double if possible, otherwise hit"
  pair_hash[10][7] = "Double if possible, otherwise hit"
  pair_hash[10][8] = "Double if possible, otherwise hit"
  pair_hash[10][9] = "Double if possible, otherwise hit"

  pair_hash[10][10] = "Hit"
  pair_hash[10][22] = "Hit"

  pair_hash[12][8] = "Hit"
  pair_hash[12][9] = "Hit"
  pair_hash[12][10] = "Hit"
  pair_hash[12][22] = "Hit"

  pair_hash[14][9] = "Hit"

  pair_hash[14][10] = "Split"

  pair_hash[14][22] = "Hit"

  pair_hash[18][7] = "Stay"

  pair_hash[18][10] = "Stay"
  pair_hash[18][22] = "Stay"

  pair_hash[20] = Hash.new("Stay")

  pair_hash[22] = Hash.new("Split")

puts "Please enter your first card. For JACK please enter J, for QUEEN please enter Q, for KING please enter K, and for ACE please enter A."
first_card = gets.chomp.upcase

if first_card == "J"
  first_card = 10.to_i
elsif first_card == "Q"
  first_card = 10.to_i
elsif first_card == "K"
  first_card = 10.to_i
elsif first_card == "A"
  first_card = 11.to_i
else
  first_card = first_card.to_i
end

players_hand[:cards] << first_card

puts "Please enter your second card. For JACK please enter J, for QUEEN please enter Q, for KING please enter K, and for ACE please enter A."
second_card = gets.chomp.upcase

if second_card == "J"
  second_card = 10.to_i
elsif second_card == "Q"
  second_card = 10.to_i
elsif second_card == "K"
  second_card = 10.to_i
elsif second_card == "A"
  second_card = 11.to_i
else
  second_card = second_card.to_i
end

players_hand[:cards] << second_card

players_hand[:total] = 0
  players_hand[:cards].each do |i|
    players_hand[:total] += i
  end

puts "FOR REFERENCE: Player's card total is #{players_hand[:total]}"

puts "Please enter the dealer's card: "
dealers_card = gets.chomp

if dealers_card == "J"
  dealers_card = 10.to_i
elsif dealers_card == "Q"
  dealers_card = 10.to_i
elsif dealers_card == "K"
  dealers_card = 10.to_i
elsif dealers_card == "A"
  dealers_card = 11.to_i
else
  dealers_card = dealers_card.to_i
end

if first_card == 11 || second_card == 11
  puts soft_hash[players_hand[:total]][dealers_card]
elsif first_card == second_card
  puts pair_hash[players_hand[:total]][dealers_card]
else
  puts hard_hash[players_hand[:total]][dealers_card]
end
