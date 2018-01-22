HAND = [nil, "グー", "チョキ", "パー"]
RESULT = ["draw", "lost..", "won!!"]

module Janken
  def judge(player_hand, enemy_hand)
    result = (player_hand - enemy_hand + 3) % 3
    puts "ジャンケン ポン！", "#{RESULT[result]} player:#{HAND[player_hand]} vs enemy:#{HAND[enemy_hand]}"
    return result
  end
end

class Player
  attr_reader :hand, :won, :lost, :draw
  
  def initialize(won = 0, lost = 0, draw = 0)
    @won = won
    @lost = lost
    @draw = draw
  end
  
  def add_won
    @won += 1
  end
  
  def add_lost
    @lost += 1
  end
  
  def add_draw
    @draw += 1
  end
  
  def select_hand(hand)
    @hand = hand
  end
end

include Janken

player = Player.new
enemy = Player.new

i = 0
while i < 100 do
  player.select_hand(rand(1..3))
  enemy.select_hand(rand(1..3))
  result = judge(player.hand, enemy.hand)
  
  if result == 2
    player.add_won
  elsif result == 1
    player.add_lost
  elsif result == 0
    player.add_draw
    i -= 1
  end
  i += 1
end

puts "#{player.won}勝#{player.lost}敗#{player.draw}分けでした。"