require 'nokogiri'
require 'open-uri'

class Parser
  def get_meny
    doc = Nokogiri::HTML(open("http://butlercatering.se/"))
    puts doc
  end
end

parser = Parser.new
parser.get_meny