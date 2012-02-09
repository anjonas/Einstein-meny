require 'nokogiri'
require 'open-uri'

class Parser
  def get_meny
  	week_meny = []
    doc = Nokogiri::HTML(open("http://butlercatering.se/"))
    doc.xpath('//td/table/tbody/tr/td/p').each do |node|
        week_meny.push(node.text.match(/M(.*)/))
    	week_meny.push(node.text.match(/Tis(.*)/))
    	week_meny.push((node.text.match(/Ons(.*Tors)/)))
    	week_meny.push(node.text.match(/Tors(.*)/))
        week_meny.push(node.text.match(/Fre(.*)/))
    end
    week_meny = week_meny - ["", nil]
    week_meny.each do |node|
    	puts node
    end
  end
end


parser = Parser.new
parser.get_meny