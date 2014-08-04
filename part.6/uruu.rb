class Uruu

  def check(s_year, e_year)
    puts "開始年は0以上の整数でお願いします。" if s_year == 0
    puts "終了年は0以上の整数でお願いします。" if e_year == 0
    puts "終了年は開始年より古い年にしてください。" if (s_year > e_year)
    puts "同じ年は止めましょう" if (s_year - e_year) == 0
  end

  def toshi(s_year, e_year)
    years = e_year - s_year
    count = 0
    puts "コチラがうるう年の一覧になります。"
    years.times{|i|
      i = i + s_year
      if (i % 4 == 0) && (i % 100 != 0) && (i != 0)
        puts i
        count += 1
      elsif i % 400 == 0
        puts i
        count += 1
      end
    }
    puts "合計#{count}うるう年"
  end

end

uruu = Uruu.new
s_year = 0
e_year = 0

until (s_year != 0) && (e_year != 0) && (s_year < e_year)
  puts "何年から？"
  s_year = gets.chomp.to_i
  puts "何年まで？？"
  e_year = gets.chomp.to_i
  uruu.check(s_year, e_year)
end
uruu.toshi(s_year, e_year)
