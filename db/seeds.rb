require 'csv'

csv = CSV.read('./db/seed_data.csv')
csv.shift

csv.each do |row|
  PhraseRepository.create!(english_phrase: row[0].gsub("&nbsp;", ""), huttese_phrase: row[1].gsub("&nbsp;", ""))
end
