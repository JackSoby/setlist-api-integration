# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
response = HTTParty.get('http://api.setlist.fm/rest/0.1/artist/94f8947c-2d9c-4519-bcf9-6d11a24ad006/setlists.json?p=5',
:headers => { "accept" => "application/json", "x-api-key" => "#{ENV["SETLIST_API_KEY"]}"})
@dead = JSON.parse(response.body)


# Tour.create(name: @dead["setlists"]['setlist'].last["@tour"])
# Show.create(venue: @dead["setlists"]['setlist'].last["venue"]['@name'], date: @dead["setlists"]['setlist'].last['@eventDate'], tour: Tour.first )
# Setlist.create(name: @dead["setlists"]['setlist'].last['sets']['set'][0]['@name'], show: Show.first)

@dead["setlists"]['setlist'].last['sets']['set'][1]['song'].each do |song|
  Song.create(name: song['@name'], setlist: Setlist.first, length: 25)
end

  # <li> Date <%= @dead["setlists"]['setlist'].last['@eventDate'] %> </li>
  # <li> Venue <%= @dead["setlists"]['setlist'].last["venue"]['@name']%> </li>
  # <li><%= @dead["setlists"]['setlist'].last['sets']['set'][0]['@name'] %></li>

  # <% @dead["setlists"]['setlist'].last['sets']['set'][0]['song'].each do |song| %>
  #   <li> <%= song['@name'] %></li>
  # <% end %>
  # <li><%= @dead["setlists"]['setlist'].last['sets']['set'][1]['@name'] %></li>
  # <% @dead["setlists"]['setlist'].last['sets']['set'][1]['song'].each do |song| %>
  #   <li> <%= song['@name'] %></li>
  # <% end %>
  # <li>encore</li>
  # <%= @dead["setlists"]['setlist'].last['sets']['set'][2]['song']['@name'] %>
