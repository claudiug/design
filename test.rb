require './src/CsvReader.rb'

reader = CsvReader.new

puts reader.read_in_csv_data('file')