require_relative 'Parser'

class UserModule
  def get_offers
    puts "Which days menu do you want? Press "
    puts " 1 for Monday \n 2 for Tuesday \n 3 for Wednesday \n 4 for Thursday \n 5 for Friday"
    day = gets
    parser = Parser.new
    puts parser.get_meny[day.to_i - 1]
  end
end

user = UserModule.new
user.get_offers

