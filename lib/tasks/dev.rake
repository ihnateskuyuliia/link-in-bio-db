desc "Fill the database tables with some sample data"
task({ :sample_data => :environment }) do

puts "Creating sample data..."

if Rails.env.development?
  puts "Deleting the previous data..."
  Item.destroy_all
end

puts "Creating first item..."
item_1 = Item.new
item_1.link_url = "https://www.formula1.com/en/latest/article/the-stars-aligned-hamilton-reveals-the-key-factors-behind-his-shock-ferrari.2vJRwYdyFN1J3vyTUqZMFr"
item_1.link_description = "Hamilton reveals the key factors behind his Ferrari switch"
item_1.thumbnail_url = "https://fastly.picsum.photos/id/612/200/200.jpg?hmac=HbIkwJ0QBqhSlGTi3bnF4JFTp9BntF-teQZUQhpqWyM"
item_1.save

puts "Creating second item..."
item_2 = Item.new
item_2.link_url = "https://www.gpfans.com/en/f1-news/1033188/f1-lewis-hamilton-ferrari-debut-mercedes-abu-dhabi-test-2024/"
item_2.link_description = "Hamilton's Ferrari debut DELAYED"
item_2.thumbnail_url = "https://fastly.picsum.photos/id/804/200/200.jpg?hmac=73qw3Bnt67aOsdWd033BvfX9Gq0gIJ6FSL3Dp3gA97E"
item_2.save

puts "Creating third item..."
item_3 = Item.new
item_3.link_url = "https://www.theguardian.com/sport/2024/oct/26/charles-leclerc-interview-ferrari-lewis-hamilton-formula-one"
item_3.link_description = "Charles Leclerc: 'I'm super excited to work with Lewis"
item_3.thumbnail_url = "https://fastly.picsum.photos/id/401/200/200.jpg?hmac=WUK1zTQudJvymN9ZlGGq6GtyuhiPyUgFOrKvKyT5wvc"
item_3.save

puts "Done!"
end
