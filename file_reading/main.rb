current_path = File.dirname(__FILE__)
file_path = "#{current_path}/text.txt"

empty_line = 0
last_five = []

if File.exist?(file_path)
  f = File.new(file_path)
  str_arr = f.readlines
  f.close

  str_arr.each_with_index { |value, index|
    if value == "\n"
      empty_line+=1
    end
    if index >= str_arr.length-5
      last_five << value
    end
  }
  puts "Total lines: #{str_arr.length}"
  puts "Empty lines: #{empty_line}"
  puts "The last 5 lines of the file:\n\n"
  puts last_five
else
  puts "File doesn't exist"
end
