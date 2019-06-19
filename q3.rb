GUEST = {you: 'あなた', computer: 'コンピューター'}
KIND = {0=>'グー', 1=>'チョキ', 2=>'パー'}

def judge(a, b)
  if (a == 0 && b == 1) || (a == 1 && b == 2) || (a == 2 && b == 0)
    return "#{GUEST[:you]}の勝ち"
  elsif (b == 0 && a == 1) || (b == 1 && a == 2) || (b == 2 && a == 0)
    return "#{GUEST[:computer]}の勝ち"
  elsif a == b
    return "引き分け"
  end
end

while(true)
  print "グーは0, チョキは1, パーは2 を入力してください:"
  input = gets.to_i
  random = rand(3)
  puts "#{GUEST[:computer]}:#{KIND[random]}"
  puts "#{GUEST[:you]}:#{KIND[input]}"

  puts "勝敗 = #{judge(input, random)}"
end