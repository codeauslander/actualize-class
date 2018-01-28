require 'unirest'
response=Unirest.get("http://localhost:3000/bonus_1")
bonus_2=response.body
puts JSON.pretty_generate(bonus_2)