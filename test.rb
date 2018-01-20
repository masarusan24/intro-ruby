test = [{"subject" => "math", point: 70},
        {:subject => "english", point: 50},
        {subject: "society", point: 80}]

test << {subject: "science", point: 100}

test.each do |sub|
  puts sub
end