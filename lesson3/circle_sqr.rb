$stdout.sync = true

def circle_radius(radius)
  pi = 3.1416.to_f
  if radius != nil
    puts "The sqwere of the circle is: #{(pi * radius**2).round(3)}"
  end
end

loop do
  puts "Enter the circle's radius"
  radius = STDIN.gets.chomp.to_f
  circle_radius(radius)

  if radius == 0
    break
  end
end
