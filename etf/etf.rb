require 'rubygems'
require 'nokogiri'
require 'open-uri'
# key lies below

page = Nokogiri::HTML(open("http://etf.stock-encyclopedia.com/category/etfs-listed-in-canada.html"))
etfs = page.css('td.main table a')

File.open('etflist.html', 'w') do |f| # f is rep the file with File.open

f.puts("<html>")
f.puts("<head>")
f.puts("<title>Intro to HTML</title>")
f.puts("</head>")
f.puts("<body>")
f.puts("<h1> List of ETF's in Canada</h1>")
f.puts("<ul>")

etfs.each do |etf|
	# .text is a nokogiri method that is being called on etf
	f.puts("   <li>" + etf.text + "</li>")
end

f.puts ("</ul>")
f.puts ("</body>\n")
f.puts ("</html>\n")

# the nottation \n creates a new line (rather than printing all HTML on the same line.)
end