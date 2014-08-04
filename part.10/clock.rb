def clock
  time = Time.now.hour
  time.times{ |i|
  yield i
  }
end


clock do |time|
  puts "#{time + 1}時だ、ごーん。"
end

i = 1
clock do
  i += 1
end
puts "#{i}時をお知らせしました。"
