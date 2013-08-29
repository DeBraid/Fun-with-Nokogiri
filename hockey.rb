# hockey stats

require 'rubygems'
require 'nokogiri'
require 'open­-uri'

	File.open('nhl.txt', 'w') do |f|

		page = Nokogiri::HTML(open("http://www.nhl.com/ice/playerstats.htm?season=20122013&gameType=2&team=&position=S&country=&status=&viewName=summary#?navid=nav-sts-indiv"))
		stats = page.css('table tr td:first­child span')
		books.each do |book|

		f.write(“<div>” + book + "</div>\n")
		end
	end
end