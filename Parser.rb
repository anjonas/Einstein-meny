require 'nokogiri'
require 'open-uri'

class Parser
  def get_meny
    doc = Nokogiri::HTML(open("http://butlercatering.se/"))
    doc.xpath('//td/table/tbody/tr/td/p').each do |node|
    	puts node.text
    end
  end
end

parser = Parser.new
parser.get_meny