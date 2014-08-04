class Mokuzi

  def input
    n = 0
    list =  Array.new { Array.new }
    #word = ""

    loop{
      puts "第#{n + 1}章のタイトルを入力しましょう"
      puts "（終了するなら end を入力）"
      word = gets.chomp.to_s
      break if word == "end"
      list.push([0,0])
      list[n][0] = word
      puts "それは何ページですか？"
      word = gets.chomp.to_s
      list[n][1] = word
      n += 1
    }
    list
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
