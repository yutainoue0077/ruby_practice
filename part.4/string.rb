class GetStr
  def g_name(f, l)
    puts "#{l} #{f}さんですね、こんにちは。"
  end

  def g_number(num)
    if num != 0
      puts "そこは#{num + 1}にしておきましょう。"
    else
      puts "それは 0以下 もしくは 文字ではないですか？"
    end
  end
end

g_str = GetStr.new

puts "あなたの名字はなんですか？"
name_l = gets.chomp
puts "じゃあ下の名前は？"
name_f = gets.chomp
g_str.g_name(name_f, name_l)
puts "好きな数字はなんですか？"
num = gets.chomp.to_i
g_str.g_number(num)
