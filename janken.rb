
class Player  #manage the player's input
  def hand
    puts "Veuillez entrer un numéro." #ask the player to input a number between 0 and 2
    puts "0:goo, 1:choki, 2:par"
    input_hand=gets.to_i
    while true
      a=[0,1,2]
      if a.include?(input_hand) #check that the number is correct
          return input_hand
        break
      else
        puts "Veuillez entrer un numéro correct."
        puts "0:goo, 1:choki, 2:par"
        input_hand=gets.to_i #ask again if this is not correct
      end
    end
  end
end
class Enemy
  def hand
    input_enemy = 0+rand(3) #generate 3 random numbers starting at 0
    return input_enemy
  end
end

class Janken
  def pon (player_hand,enemy_hand)
    janken=["goo","choki","par"]
  puts "la main de l'adversaire est :#{janken[enemy_hand]}"
  puts "votre main est :#{janken[player_hand]}"

  if enemy_hand==player_hand
    puts "Aiko"
  elsif (player_hand == 0 && enemy_hand == 1) || (player_hand == 1 && enemy_hand == 2) || (player_hand == 2 && enemy_hand == 0)
    puts "you win"
  else
    puts "im losing"
  end
  end
end
  player=Player.new
  enemy=Enemy.new
  janken=Janken.new
  janken.pon(player.hand,enemy.hand)

while true #replay
  puts "-----------TERMINATE--------------"
  next_game=janken.pon(player.hand,enemy.hand)
end
