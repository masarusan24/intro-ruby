# sizeメソッドを使わず文字列の長さを求める
def size_of_chara(text)
  size = 0
  text.split("").each do
    size += 1
  end
  return size
end

print "文字を入力してください:"
input_text = gets.chomp.to_s
puts "size = #{size_of_chara(input_text)}"