class Player
  def hand()
    puts "Please enter a number"
    puts "0: Rock, 1: Scissors, 2: Paper"
    input_hand = gets
    while true
      if input_hand.include? "0" or input_hand.include? "1" or input_hand.include? "2"
        return input_hand = input_hand.to_i
      else
        puts "Please enter a number from 0 to 2"
        puts "0: Rock, 1: Scissors, 2: Paper"
        input_hand = gets
      end
    end
  end
end

class Enemy
  def hand()
    enemy_hand = rand(3)
    return enemy_hand
  end
end

class Janken
  def pon(player_hand, enemy_hand)
    janken = ["Rock", "Scissors", "Paper"]
    puts "Your hand is #{janken[player_hand]}"
    puts "Your enemy's hand is #{janken[enemy_hand]}"
    if player_hand == enemy_hand
      puts "The game is draw."
    elsif (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)
      puts "You win!"
    else
      puts "You lose!"
    end
  end
end

class GameStart
  def self.jankenpon
    player1 = Player.new
    enemy1 = Enemy.new
    janken1 = Janken.new
    next_game = true
    while next_game
      next_game = janken1.pon(player1.hand, enemy1.hand)
    end
  end
end

GameStart.jankenpon
