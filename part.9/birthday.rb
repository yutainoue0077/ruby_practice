class Birthday

  def howmany(year, month, day)
    one_year = Time.mktime(1)
    b_time = Time.mktime(year, month, day)
    n_time = Time.new
    live_times = n_time - b_time
    old = live_times.to_i / 60 / 60 / 24 / 365
    old.times{ |i|
      b_time = Time.mktime(year + (i + 1), month, day)
      puts "#{i + 1}才の誕生日おめ！#{b_time}"
    }
    puts "あなたの年齢は#{old.to_i}ですね？"
  end

end

birthday = Birthday.new
puts "何年生まれ？"
year = gets.chomp.to_i
puts "何月生まれ？"
month = gets.chomp.to_i
puts "何日生まれ？"
day = gets.chomp.to_i

birthday.howmany(year, month, day)
