$stdout.sync = true
def stars_output(value)
  output = ""
  for i in 0...value
    output+="*"
  end
  puts "Вот ваши звезды :)\n#{output}"
end

puts "Сколько вам звезд на погоны?"
answer = STDIN.gets.to_i
stars_output(answer)
