# encoding: utf-8

require 'nokogiri'
require 'open-uri'
require 'charlock_holmes/string'


class Parser
  def get_meny
  	weekday = []
    week_meny = []
    doc = Nokogiri::HTML(open("http://butlercatering.se/"))
    doc.xpath('//td/table/tbody/tr/td/p').each do |node|
        weekday.push(node.text.match(/Mån(.*)/))
    	weekday.push(node.text.match(/Tis(.*)/))
    	weekday.push((node.text.match(/Ons(.*Tors)/).to_s.gsub(/Tors/, '')))
    	weekday.push(node.text.match(/Tors(.*)/))
        weekday.push(node.text.match(/Fre(.*)/).to_s.gsub(/Fre/, 'Fre:'))
    end

    weekday = weekday - ["", nil]
    weekday.each do |node|
    	week_meny.push(node.to_s.split("•"))
    end

    return week_meny
  end

end
