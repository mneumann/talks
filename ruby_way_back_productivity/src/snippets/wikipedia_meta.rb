require 'hpricot'   # HTML parser
require 'open-uri'  # treat any kind of URI like a file

NAME = readline.split.map{|i| i.capitalize}.join('_')
URL = "http://de.wikipedia.org/wiki/#{NAME}"

doc = Hpricot(open(URL).read)
(doc / "td.metadata-label").each {|e|
  puts "#{e.inner_text.ljust(20)} #{e.next_sibling.inner_text}"
}
