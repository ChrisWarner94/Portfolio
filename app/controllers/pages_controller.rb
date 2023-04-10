class PagesController < ApplicationController
  def home
    @technologies = Technology.all
    url = 'https://api.github.com/users/ChrisWarner94/repos'
    user_serialized = URI.open(url).read
    user = JSON.parse(user_serialized)
    @user = user 
  end
end

