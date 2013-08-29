require 'nokogiri'
require 'open-uri'
# key lies below
page = Nokogiri::HTML(open("http://toronto.en.craigslist.ca/bia/"))
bikes = page.css('blockquote#toc_rows p.row span.pl a')

File.open('bikes.html', 'w') do |f| # f is rep the file with File.open

f.puts("<html>")
f.puts("<head>")
f.puts("<title>Intro to HTML</title>")
f.puts("</head>")
f.puts("<body>")
f.puts("<h1> Bikes Rock! </h1>")
f.puts("<ul>")

bikes.each do |bike|
	# .text is a nokogiri method that is being called on bike
	f.puts("   <li>" + bike.text + "</li>")
end

f.puts ("</ul>")
f.puts ("</body>\n")
f.puts ("</html>\n")

# the nottation \n creates a new line (rather than printing all HTML on the same line.)
end