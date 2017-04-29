require 'sqlite3'
require 'json'

data = nil
begin
  data = JSON.parse( IO.read('edict.js'))
rescue
  raise  "Json error"
end

db = SQLite3::Database.open 'development.sqlite3'

i = 0
data.each do |d|
  i += 1
  q = 'INSERT INTO japanese_words (word, meaning, created_at, updated_at) values ("' + d[0] + '", "' + d[1] + '", "' + Time.now.to_s + '", "' + Time.now.to_s + '")'
  db.execute q
  p i
end
# q = 'INSERT INTO japanese_words (word, meaning, created_at,updated_at) VALUES ("刀", "Sword","' + Time.now.to_s + '","' + Time.now.to_s + '")'
db.execute 'SELECT * FROM japanese_words' do |word|
  p word
end
