class PagesController < ApplicationController
  def home
    
    # pull public repos from github 
    @technologies = Technology.all
    url = 'https://api.github.com/users/ChrisWarner94/repos'
    repos_serialized = URI.open(url).read
    repos = JSON.parse(repos_serialized)
    @repos = repos 

    # pull languages included in each repo
    url = "https://api.github.com/repos/ChrisWarner94/Recipeasy/languages" # eachdo |key, value| key for language name watch out for shell
    language_serialized = URI.open(url).read
    languages = JSON.parse(language_serialized)
    @languages = languages 

    url = 'https://api.github.com/repos/ChrisWarner94/Recipeasy/commits' # date for time and date
    commits_serialized = URI.open(url).read
    commits = JSON.parse(commits_serialized)
    @commits = commits 
  end
end

