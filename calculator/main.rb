$stdout.sync = true
puts "First number:"
first_num = STDIN.gets.chomp
puts "Second number:"
sec_num = STDIN.gets.chomp
puts "Choose operation: + - * / "
operant = STDIN.gets.chomp


if first_num.include? "."
  first_num = first_num.to_f
else
  first_num = first_num.to_i
end
if sec_num.include? "."
  sec_num = sec_num.to_f
else
  sec_num = sec_num.to_i
end


case operant
  when "+"
    puts "Result: #{(first_num + sec_num).round(3)}"
  when "-"
    puts "Result: #{(first_num - sec_num).round(3)}"
  when "*"
    puts "Result: #{(first_num * sec_num).round(3)}"
  when "/"
    if first_num.class == Integer
      begin
        puts "Result: #{(first_num / sec_num).round(3)}"
      rescue ZeroDivisionError => error
        puts "You can't divide by zero!: #{error.message}"
      end
    else
        puts "Result: #{(first_num / sec_num).round(3)}"
    end
  else
    puts "There's no this operation"
end
