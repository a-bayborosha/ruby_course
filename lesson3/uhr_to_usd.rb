$stdout.sync = true
puts "What currency do you have on hand?"
puts "1. Ukraine Hryvnia"
puts "2. US Dollar"
answer = gets.to_i
if (answer == 1)
  puts "How much costed 1 UHR in USD now?"
  answer1 = gets.to_f
  puts "How many UHR do you have?"
  answer2 = gets.to_f
else
  puts "How much costed 1 USD in UHR now?"
  answer1 = gets.to_f
  puts "How many USD do you have?"
  answer2 = gets.to_f
end
puts "Your reserves are equal: #{(answer2 * answer1).round(3)} #{answer == 1 ? "USD" : "UHR"}"
