class Billion
  def birthday(year, month, day, hour, min, sec)
    b_time = Time.mktime(year, month, day, hour, min, sec)
    b_time += 1_000_000_000
    puts "あなたは#{b_time}に生誕10億秒を迎えます。"
  end
end

billion = Billion.new

puts '何年生まれ？'
year = gets.chomp.to_i
puts '何月生まれ？'
month = gets.chomp.to_i
puts '何日生まれ？'
day = gets.chomp.to_i
puts '何時生まれ？'
hour = gets.chomp.to_i
puts '何分生まれ？'
min = gets.chomp.to_i
puts '何秒生まれ？'
sec = gets.chomp.to_i
billion.birthday(year, month, day, hour, min, sec)
