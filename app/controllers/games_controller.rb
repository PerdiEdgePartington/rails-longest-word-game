require 'open-uri'
require 'json'

class GamesController < ApplicationController
def new
@letters = ("A".."Z").to_a.sample(10)
end

def engish_word?(url)
  test = URI.open(url).read
  data = JSON.parse(test)
  data["found"] == true
end

def score
  @letters = params[:letters]
  if params[:word].chars.all? { |letter| params[:word].count(letter) <= letters.count(letter) } == false
  "Sorry but #{[:word]} can't be built out of #{@letters}"
  elsif english_word?(@letters) == false
  "Sorry but #{[:word]} does not seem to be a valid English word..."
  else
  "Congratulations! #{[:word]} is a valid English word!

end
