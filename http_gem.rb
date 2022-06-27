require "HTTP"

system "clear"

response = HTTP.get("http://localhost:3000/lotto")

puts response.parse(:json)
