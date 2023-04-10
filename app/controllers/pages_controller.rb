class PagesController < ApplicationController
  def home
    
    # pull public repos from github 
    @technologies = Technology.all
    url = 'https://api.github.com/users/ChrisWarner94/repos'
    repos_serialized = URI.open(url).read
    repos = JSON.parse(repos_serialized)
    @repos = repos 

    # pull languages included in each repo
    url = "https://api.github.com/repos/ChrisWarner94/Recipeasy/languages"
    language_serialized = URI.open(url).read
    language = JSON.parse(language_serialized)
    @languages = languages 
  end
end

