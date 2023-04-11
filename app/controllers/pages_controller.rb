

class PagesController < ApplicationController
  def home
    @technologies = Technology.all
    
    # projects_array = []

    # # pull public repos from github 
    
    # call_url = "https://api.github.com/users/ChrisWarner94/repos"
    # repos_serialized = URI.open(call_url).read
    # repos = JSON.parse(repos_serialized)
    # @repos = repos 

    # repos.each do |repo|

    #     repository = Project.new(
    #         name: repo["name"],
    #         url: repo["html_url"],
    #         description: [:description]
    #     )
    #     projects_array << repository
    #     @display_projects = projects_array.last(3)
    # end

    # @projects = projects_array

    # # pull languages included in each repo
    # call_url = "https://api.github.com/repos/ChrisWarner94/Recipeasy/languages" # eachdo |key, value| key for language name watch out for shell
    # language_serialized = URI.open(call_url).read
    # languages = JSON.parse(language_serialized)
    # @languages = languages 

    # call_url = 'https://api.github.com/repos/ChrisWarner94/Recipeasy/commits' # date for time and date
    # commits_serialized = URI.open(call_url).read
    # commits = JSON.parse(commits_serialized)
    # @commits = commits 
  end
end

