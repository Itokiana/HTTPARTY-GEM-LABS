require 'httparty'
require 'json'

response = HTTParty.get('https://fr.dofus.dofapi.fr/monsters').parsed_response

# p response

File.open("monsters.json", "w") { |f| f.write response.to_json }