
$current_path = File.dirname(__FILE__)



def face_maker(file_name)

  file_path = "#{$current_path}/#{file_name}.txt"
  if File.exist?(file_path)
    file = File.new(file_path)
    face_part = file.readlines
    file.close
    puts face_part.sample
  else
    puts "File doesn't exist"
  end

end
face_maker("hair")
face_maker("eyes")
face_maker("nose")
face_maker("mouth")
face_maker("chin")
