HAND = [nil, "グー", "チョキ", "パー"]
RESULT = ["draw", "lose..", "win!!"]
module Janken
  def judge(player_hand, enemy_hand)
    result = (player_hand - enemy_hand + 3) % 3
    puts "ジャンケン ポン！", "#{RESULT[result]} player:#{HAND[player_hand]} vs enemy:#{HAND[enemy_hand]}"
    return result
  end
end

class Player
  attr_reader :hand, :win, :lose, :draw
  
  def initialize(win = 0, lose = 0, draw = 0)
    @win = win
    @lose = lose
    @draw = draw
  end
  
  def add_win
    @win += 1
  end
  
  def add_lose
    @lose += 1
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
    player.add_win
  elsif result == 1
    player.add_lose
  elsif result == 0
    player.add_draw
    i -= 1
  end
  i += 1
end

puts "#{player.win}勝#{player.lose}敗#{player.draw}分けでした。"