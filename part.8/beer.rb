class Beer
  def sing(beer_count)
    while beer_count > 0
      puts "#{beer_count} Bottles of beer on the wall"
      puts "#{beer_count} Bottles of beer"
      beer_count -= 1
      puts 'Take one down and pass it around'
      puts "#{beer_count} Bottles of beer on the wall"
      puts ''
    end
  end
end

beer = Beer.new
puts '何本飲みたい？？？'
beer_count = gets.chomp.to_i
beer.sing(beer_count)
