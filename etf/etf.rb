require 'rubygems'
require 'nokogiri'
require 'open-uri'
# key lies below

def tickers # need a list of stock tickers

end

def grab_ticker(headline)
  i = headline.chomp('-TSX)')
  names_and_tickers = i.split('(')
  names_and_tickers.last
end

# use the tickers to fetch the corresponding charts

def get_chart_url(ticker)
  "http://stockcharts.com/c-sc/sc?chart=#{ticker}.to,uu[305,a]dacayaci[pb20!b50][dg]"
end

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
    ticker = grab_ticker(etf.text)
  	f.puts("   <li>" + grab_ticker(etf.text) + "</li>")
    f.puts("   <li>" + "<img src=\"#{get_chart_url(ticker)}\" />"  + "</li>")
  end

  f.puts ("</ul>")
  f.puts ("</body>\n")
  f.puts ("</html>\n")

end

# To do: add












