class Year
  def year_hour(year)
    year_h = year * 365 * 24
    puts "#{year}year is #{year_h}hour"
  end

  def year_minute(year)
    year_m = year * 365 * 24 * 60
    puts "#{year}year is #{year_m}minute"
  end

  def my_second(year, month, day, hour, min, sec)
    my_t = Time.new(year, month, day, hour, min, sec)
    live_t = Time.now - my_t
    puts "My live time is #{live_t}sec"
  end

  def life_is_chocolate(life)
    choco = life * 365 * 2
    puts "I need  #{choco}chocos, in my life"
  end

  def year_old(life_time)
    old = life_time / 60 / 60 / 24 / 365
    puts "You live #{life_time}sec, #{old}old"
  end
end

yuta = Year.new

yuta.year_hour(1)
yuta.year_minute(10)
yuta.my_second(1989, 7, 3, 12, 30, 30)
yuta.life_is_chocolate(80)
yuta.year_old(1_034_000_000)
