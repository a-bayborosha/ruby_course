$stdout.sync = true
current_path = File.dirname(__FILE__)
file_path = "#{current_path}/data/text.txt"


# PATTERN = /\b[a-z]{3}\b/mi
PATTERN = /^\S{3}$/mi

if File.exist?(file_path)
text = File.read(file_path)
text = text.gsub(/[,\(\)\.\-;:\?\!]/, '')
text = text.split
puts text.count { |el| el.match(PATTERN)} 
else
  puts "The file doesn't exist"
end


# if File.exist?(file_path)
# count = 0
# file = []
# three_letters = []
# f = File.new(file_path)
# file = f.readlines.map(&:chomp)
# f.close
# file = file.join()
# file = file.split(" ")
# file.each do |element|
#   if element.match(PATTERN)
#     three_letters << element
#     count += 1
#   end
# end
#
# else
#   puts "The file doesn't exist"
# end
#
# puts count
# puts three_letters
