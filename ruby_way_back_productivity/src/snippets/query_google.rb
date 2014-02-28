require 'hpricot'   # HTML parser
require 'open-uri'  # treat any kind of URI like a file

doc = Hpricot(open("http://www.google.de/search?hl=de&q=#{readline}").read)
(doc / '.g .l').each {|e|
  puts "----------------------------------------------"
  puts e.inner_text, e[:href] 
}
