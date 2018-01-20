# 大きい数を返す
def bigger(x,y)
  if x >= y
    return x
  else
    return y
  end
end

# 3つの数の最大値を返す
def biggest(a,b,c)
  if a > b
    if a > c 
      return a
    else
      return c
    end
  else
    if b > c
      return b
    else
      return c
    end
  end
end

# 3つの数の中間値を返す
def median(a,b,c)
  biggest_number = biggest(a,b,c)
  
  if biggest_number == a
    return bigger(b,c)
  elsif biggest_number == b
    return bigger(a,c)
  elsif biggest_number == c
    return bigger(a,b)
  end
end

print "a:"
a = gets.chomp.to_i
print "b:"
b = gets.chomp.to_i
print "c:"
c = gets.chomp.to_i

puts median(a,b,c)