require_relative 'Parser'

class UserModule
  parser = Parser.new
  puts "Which days menu do you want? Press "
  puts " 1 for Monday \n 2 for Tuesday \n 3 for Wednesday \n 4 for Thursday \n 5 for Friday"
  day = gets
  puts parser.get_meny[day.to_i]
end

