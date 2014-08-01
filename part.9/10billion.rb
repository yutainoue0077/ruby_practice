class Billion

  def birthday (ten_billion)
    b_time = Time.mktime(1989, 7, 3, 12, 0, 0)
    b_time += ten_billion
    puts "あなたは#{b_time}に生誕10億秒を迎えます。"
  end

end

billion = Billion.new
billion.birthday(1000000000)
