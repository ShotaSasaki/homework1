GUEST = {you: 'あなた', computer: 'コンピューター'}
KIND = {0=>'グー', 1=>'チョキ', 2=>'パー'}
KIND_FULLNAME = {'guu'=>0, 'choki'=>1, 'pa'=>2}
KIND_SHORTNAME = {'g'=>0, 'c'=>1, 'p'=>2}

def validation(input)
  if KIND_FULLNAME.key?(input)
    return KIND_FULLNAME[input].to_i
  elsif KIND_SHORTNAME.key?(input)
    return KIND_SHORTNAME[input].to_i
  elsif input =~ /^[0-9]+$/
    return input.to_i
  end
end

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
  print "guu,choki,paを入力してください:"
  input = validation(gets.chomp)
  random = rand(3)
  puts "#{GUEST[:computer]}:#{KIND[random]}"
  puts "#{GUEST[:you]}:#{KIND[input]}"

  puts "勝敗 = #{judge(input, random)}"
end