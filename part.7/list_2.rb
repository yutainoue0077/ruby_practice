=begin
left_w = 40
right_w = 30
center_w = 30

puts("目次".center(center_w))
puts("1章: 数".ljust(left_w/2) + "p. 1".rjust(right_w/2))
puts("2章: 文字".ljust(left_w/2) + "p. 72".rjust(right_w/2))
puts("3章: 変数".ljust(left_w/2) + "p. 118".rjust(right_w/2))



test = [["佐藤", 20], ["山田", 28], ["加藤", 17]]


test << ["aaa","bbb"]

p test[1][2]
=end
#####################


class Mokuzi

  def input
    n = 0
    list =  Array.new() { Array.new() }
    word = ""

    loop{
      puts "第#{n + 1}章のタイトルを入力しましょう"
      puts "（終了するなら end を入力）"
      word = gets.chomp.to_s
      if word == "end"
        list.delete_at([n][0])
        break
      end
      list.push([0,0])
      list[n][0] = word
      puts "それは何ページですか？"
      word = gets.chomp.to_s
      list[n][1] = word
      n += 1
    }
    list.compact
  end

  def maping (list)
    left_w = 40
    right_w = 30
    center_w = 30
    i = 0

    puts("目次".center(center_w))
    list.each{ |l_t, l_p|
      i += 1
      puts("#{i}章: #{l_t}".ljust(left_w/2) + "p. #{l_p}".rjust(right_w/2))
    }
  end

end

mokuzi = Mokuzi.new
list = mokuzi.input
mokuzi.maping(list)
