intro = ["以下より行う操作を選んでください",
         "1:ブログを作成する",
         "2:作成されたブログを見る",
         "3:ブログアプリを終了する"]
blogs = []

while true
  # イントロダクションの表示
  intro.each do |value|
    puts value
  end
  number = gets.chomp.to_i
  
  if number == 1
    blog = {}
    puts '1:ブログを作成する'
    puts 'ブログのタイトルを入力してください'
    blog[:title] = gets.to_s
    puts 'ブログの本文を入力してください'
    blog[:content] = gets.to_s
    puts "-----入力確認-----"
    puts '入力された本文とタイトルは以下です'
    puts "タイトル : #{blog[:title]}"
    puts "本文 : #{blog[:content]}"
    blogs << blog
  elsif number == 2
    puts '作成されたブログを見る'
    blogs.each do |blog|
      puts "タイトル : #{blog[:title]}"
      puts "本文 : #{blog[:content]}"
      puts "-----------"
    end
  elsif number == 3
    puts 'ブログアプリを終了する'
    break
  else
    puts '1〜3の数値を入力してください'
  end
end