def repeat_string(str)
  repeated_str = ""
  3.times do
    if str.size > 4
      repeated_str += str.slice(0..3)
    else
      repeated_str += str
    end
  end
  puts repeated_str
end

repeat_string('Python')
repeat_string('Go')
repeat_string('C++')
repeat_string('Java')
repeat_string('Scala')
repeat_string('JavaScript')