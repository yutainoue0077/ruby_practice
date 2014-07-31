class Sort

  def tango
    list = []
    puts "好きな英単語を好きなだけ入力してください。"
    puts "気が済んだら\"end\"で終わりましょう。"
    begin
      list << gets.chomp.to_s
    end  until list[-1] == "end"
    list.delete("end")
    puts "名前順に並べ替えました。"
    p list.sort{|a, b| a.upcase <=> b.upcase }
  end

end

sort = Sort.new
sort.tango
