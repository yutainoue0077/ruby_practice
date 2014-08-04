class Sort

  def input
    list = []
    puts "好きな英単語を好きなだけ入力してください。"
    puts "気が済んだら\"end\"で終わりましょう。"
    loop do
      list << gets.chomp.to_s
      break if list[-1] == "end"
    end
    list.delete_at(-1)
    list.delete("")
    return list
  end

  def compare(list)
    s_list = []
    list_n = 0
      begin
        word = list[0]
        list.each_with_index { |l, index|
          if word.upcase >= l.upcase
            word = l
            list_n = index
          end
        }
        s_list << word
        list.delete_at(list_n)
      end until list[0] == nil
    puts "名前順に並べ替えました。"
    p s_list
  end

end

sort = Sort.new
list = sort.input
sort.compare(list)
