require './sort_algorithm.rb'
require 'time'
require 'rubycards'
include RubyCards

# ソートアルゴリズムの選択
intro = [
  "ソートアルゴリズムを選択してください",
  "1:クイックソート",
  "2:バブルソート",
  "3:選択ソート"
]
intro.each do |val|
  puts val
end
m = gets.chomp.to_i
return if !m.between?(1,3)

# Handインスタンス
hand = Hand.new

# Deckインスタンス
deck = Deck.new
puts "======before shuffle======"
puts deck

# デッキのシャッフル
deck = deck.shuffle!
puts "======after shuffle======"
puts deck

# デッキからカードを10枚引く
hand = hand.draw(deck,10)
puts "======after draw======"
puts hand

# handオブジェクトを配列に型変換
target = hand.to_a

# targetを昇順にソート
before = Time.now
if m == 1
  puts "======quick sort======"
  target = quick_sort(target)
elsif m == 2
  puts "======bubble sort======"
  target = bubble_sort(target)
elsif m == 3
  puts "======selection sort======"
  target = selection_sort(target)
end
after = Time.now
sort_time = after - before

# 並び替えた配列でHandオブジェクトのインスタンスを作成
hand = Hand.new(target)
puts "======after sort======"
puts hand
puts "======sort time======"
puts sort_time
