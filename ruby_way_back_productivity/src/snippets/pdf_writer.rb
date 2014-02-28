require 'pdf/writer'

pdf = PDF::Writer.new
pdf.select_font 'Helvetica'
pdf.fill_color Color::RGB::Red
pdf.add_text(200, 400, 'Hallo Ruby!', 72, 45)
STDOUT << pdf.render
