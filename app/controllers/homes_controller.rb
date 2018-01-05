class HomesController < ApplicationController
  def index
    response = HTTParty.get('http://api.setlist.fm/rest/0.1/artist/94f8947c-2d9c-4519-bcf9-6d11a24ad006/setlists.json?p=1',
    :headers => { "accept" => "application/json", "x-api-key" => "#{ENV["SETLIST_API_KEY"]}"})
    @dead = JSON.parse(response.body)

 # Tour.create(name: @dead["setlists"]['setlist'].last["@tour"])
  end
end
