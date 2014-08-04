def clock
  time = Time.now.hour
  time -= 12 if time > 12
  time = 12 if time == 0
  time.times do
    yield
  end
end

clock do
  puts 'ごーん。'
end

i = 0
clock do
  i += 1
end
puts "響いた回数：#{i}回"
