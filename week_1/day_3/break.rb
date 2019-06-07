while (true)
  p "Type something: "
  line = gets.chomp()
  break if (line.downcase == 'q')
  p "You typed: #{line}"
end
