require 'httparty'

nova_scotia_electoral_districts = HTTParty.get('https://represent.opennorth.ca/boundaries/nova-scotia-electoral-districts/')

nova_scotia_json = JSON.parse(nova_scotia_electoral_districts.body)

wards = []
nova_scotia_json["objects"].each do |object|
  wards << object["name"]
end

puts wards
