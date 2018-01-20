intro = ["ジャンケン ポン！",
         "1:グー",
         "2:パー",
         "3:チョキ"]

while true
  intro.each do |val|
    puts val
  end
  number = gets.chomp.to_i
  enemy = rand(1..3)
  
  if !number.between?(1,3)
    puts "反則負けです。"
    break
  elsif (number - enemy + 3) % 3 == 2
    puts "ヤッピー"
    break
  elsif (number - enemy + 3) % 3 == 1
    puts "ズコー"
    break
  elsif (number - enemy + 3) % 3 == 0
    puts "あいこでしょ！"
  else
    puts "反則負けです。"
    break
  end
end
