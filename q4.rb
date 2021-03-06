GUEST = {you: 'あなた', computer: 'コンピューター'}
KIND = {0=>'グー', 1=>'チョキ', 2=>'パー'}

def judge(you, computer)
  if you == computer
    return "引き分け"
  elsif (you == 0 && computer == 1) || (you == 1 && computer == 2) || (you == 2 && computer == 0)
    return "#{GUEST[:you]}の勝ち"
  elsif (computer == 0 && you == 1) || (computer == 1 && you == 2) || (computer == 2 && you == 0)
    return "#{GUEST[:computer]}の勝ち"
  end
end

while(true)
  print "グーは0, チョキは1, パーは2 を入力してください:"
  input = gets.chomp
  if input == "exit"
    exit!
  end
  unless input =~ /^[0-9]+$/ && input.to_i.between?(0,2) then
    puts "入力が正しくありません"
    next
  end
  
  random = rand(3)
  puts "#{GUEST[:computer]}:#{KIND[random]}"
  puts "#{GUEST[:you]}:#{KIND[input.to_i]}"

  puts "勝敗 = #{judge(input.to_i, random)}"
end