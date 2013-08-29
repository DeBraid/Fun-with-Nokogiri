require 'rubygems'
require 'nokogiri'
require 'open-uri'
	# key lies below
	page = Nokogiri::HTML(open("http://investorshub.advfn.com/"))
	bikes = page.css('hs1 pb4 round-top thinb-tophalf')

	File.open('stocks.html', 'w') do |f| # f is rep the file with File.open

		f.puts("<html>")
		f.puts("<head>")
		f.puts("<title>Intro to HTML</title>")
		f.puts("</head>")
		f.puts("<body>")
		f.puts("<h1> Stocks  </h1>")
		f.puts("<ul>")

	stocks.each do |stock|
		# .text is a nokogiri method that is being called on bike
		f.puts("   <li>" + stock.text + "</li>")
	end

		f.puts ("</ul>")
		f.puts ("</body>\n")
		f.puts ("</html>\n")
	.
	# the nottation \n creates a new line (rather than printing all HTML on the same line.)
end
end
