require 'open-uri'

class PagesController < ApplicationController
  def home
    call_url = 'https://api.github.com/repos/ChrisWarner94/Recipeasy/commits' # date for time and date
    commits_serialized = URI.open(call_url).read
    commits = JSON.parse(commits_serialized)
    
  end
end

