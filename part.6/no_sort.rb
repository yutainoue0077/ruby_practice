class Sort

  def nyuryoku
    list = []
    puts "好きな英単語を好きなだけ入力してください。"
    puts "気が済んだら\"end\"で終わりましょう。"
    begin
      list << gets.chomp.to_s
    end  until list[-1] == "end"
    list.delete_at(-1)
    list.delete("")
    return list
  end

  def hikaku(list)
    s_list = []
    list_n = 0
      begin
       word = list[0]
       list.each_with_index{|l, index|
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
list = sort.nyuryoku
sort.hikaku(list)
