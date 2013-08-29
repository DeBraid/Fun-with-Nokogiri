require 'rubygems'
require 'nokogiri'
require 'open-uri'
# key lies below

page = Nokogiri::HTML(open("http://toronto.kijiji.ca/f-golf-clubs-Classifieds-W0QQKeywordZgolfQ20clubsQQSortZ4QQisSearchFormZtrue"))
clubs = page.css('table#SNB_Results tr.resultsTableSB rrow a.adLinkSB')

File.open('kigolf.html', 'w') do |f| # f is rep the file with File.open

f.puts("<html>")
f.puts("<head>")
f.puts("<title>Intro to HTML</title>")
f.puts("</head>")
f.puts("<body>")
f.puts("<h1> KIJIJI Golf Clubs for Sale</h1>")
f.puts("<ul>")

clubs.each do |golf|
	# .text is a nokogiri method that is being called on golf
	f.puts("   <li>" + golf.text + "</li>")
end

f.puts ("</ul>")
f.puts ("</body>\n")
f.puts ("</html>\n")

# the nottation \n creates a new line (rather than printing all HTML on the same line.)
end