require "./Player"

winner = Array.new(5, true)

while(winner.count(true) > 1)
  display = ""
  allHand = []
  winner.map.with_index { |w, i|
    if w
      player = Player.new
      player.poi
      display += "#{i + 1}:#{player} "
      allHand << player.hand
    else
      display += "#{i + 1}:× "
      allHand << nil
    end
  }
  puts display

  if [0, 1, 2].all? {|n| allHand.include?(n)}
    puts "引き分け"
  else
    if [0, 1].all? {|n| allHand.include?(n)}
      puts "勝ち: グー"
      winner.map.with_index { |w, i| winner[i] = allHand[i] == 1 ? false : w}
    elsif [1, 2].all? {|n| allHand.include?(n)}
      puts "勝ち: チョキ"
      winner.map.with_index { |w, i| winner[i] = allHand[i] == 2 ? false : w}
    elsif [2, 0].all? {|n| allHand.include?(n)}
      puts "勝ち: パー"
      winner.map.with_index { |w, i| winner[i] = allHand[i] == 0 ? false : w}
    end
  end
end

puts "勝者: #{winner.index(true) + 1}"