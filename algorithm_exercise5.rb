def hogehoge(t)
  t.times do |i|
    if (i + 1) % 3 == 0 or (i + 1).to_s.include?("3")
      puts "Hoge"
    else
      puts i + 1
    end
  end
end

hogehoge(40)