def bigger(x,y)
  if x >= y
    return x
  else
    return y
  end
end

print "x:"
x = gets.chomp.to_i
print "y:"
y = gets.chomp.to_i

puts bigger(x,y)