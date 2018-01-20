# original swapcaseメソッド
def swapcase_org(text)
  text.split("").each_with_index do |char,idx|
    if char == char.downcase
      text[idx] = char.upcase
    elsif char == char.upcase
      text[idx] = char.downcase
    end
  end
  puts text
end

swapcase_org('abCD')
swapcase_org('EEEE')
swapcase_org('ffff')
swapcase_org('algorithm_exercise6.rb')
swapcase_org('あいうえお')
swapcase_org('9804803kjkKKJKJFkkkkyir7')