class Get_str

  def g_name(f, l)
    puts "#{l} #{f}さんですね、こんにちは。"
  end

  def g_number(num)
    unless num == 0
      n = num + 1
      puts "そこは#{n}にしておきましょう。"
    else
      puts "それは数字ではないのでは？"
    end
  end

end

g_str = Get_str.new

puts "あなたの名字はなんですか？"
name_l = gets.chomp
puts "じゃあ下の名前は？"
name_f = gets.chomp
g_str.g_name(name_f, name_l)

puts "好きな数字はなんですか？"
num = gets.chomp.to_i
g_str.g_number(num)
