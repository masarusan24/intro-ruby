# 最大公約数を求める
def greatest_common_divisor(a,b)
  if a.to_i <= 0 or b.to_i <= 0
    return nil
  end
  c = a % b
  if c == 0
    return b
  else
    a,b = b,c
    greatest_common_divisor(a,b)
  end
end

puts "2つの自然数a,bの最大公約数を求めます"
print "a = "
a = gets.chomp.to_i
print "b = "
b = gets.chomp.to_i
result = greatest_common_divisor(a,b)

if result.nil?
  puts "計算不能です"
else
  puts "最大公約数は#{result}です"
end