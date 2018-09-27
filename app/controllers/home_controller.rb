class HomeController < ApplicationController
  require 'net/http'

  def index
    source = "http://www.omdbapi.com/?s=a&apikey=4333b538&page=1"
    resp = Net::HTTP.get_response(URI.parse(source))
    data = resp.body
    @result = JSON.parse(data)
  end
end