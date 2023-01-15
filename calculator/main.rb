$stdout.sync = true
puts "First number:"
first_num = STDIN.gets.chomp.to_f
puts "Second number:"
sec_num = STDIN.gets.chomp.to_f
puts "Choose operation: + - * / "
operant = STDIN.gets.chomp

case operant
  when "+"
    puts "Result: #{(first_num + sec_num).round(3)}"
  when "-"
    puts "Result: #{(first_num - sec_num).round(3)}"
  when "*"
    puts "Result: #{(first_num * sec_num).round(3)}"
  when "/"
    begin
      puts "Result: #{(first_num / sec_num).round(3)}"
    rescue ZeroDivisionError => error
      puts "You can't divide by zero!: #{error.message}"
    end
  else
    puts "There's no this operation"
end
