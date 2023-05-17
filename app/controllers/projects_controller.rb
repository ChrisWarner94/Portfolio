# frozen_string_literal: true

class ProjectsController < ApplicationController
  require 'json'

  def show
    # provides chosen project to view
    @project = Project.find(params[:id])

    # array needed for hangling github api data and cleansing
    @commit_details = []

    # acts as array holder for tech stack as projects.stack.each will not work as array is stored/returned within a string accoriding to error message despite being an array in the db
    # this is a workaround
    @techstack = JSON.parse(@project.stack)

    # API call
    call_url = 'https://api.github.com/repos/ChrisWarner94/Recipeasy/commits'
    commits_serialized = URI.open(call_url).read
    @commits = JSON.parse(commits_serialized)

    # loops through each instance in @commits and accesses/cleans the data and passes it as an array to @commit details array
    @commits.each do |commit|
      details_array = []
      commit_date_time = format_date(commit['commit']['author']['date'])
      commit_owner = commit['commit']['author']['name']
      commit_message = commit['commit']['message']
      commit_url = commit['html_url']

      details_array << commit_date_time
      details_array << commit_owner
      details_array << commit_message
      details_array << commit_url
      @commit_details << details_array
    end
  end

  private # ------------------------------------------ private methods ------------------------------------------ #

  def format_date(date_unformatted)
    # "2023-04-05T11:13:49Z" Github API date return for reference

    # Gets the first ten chars of date_formatted starting from index 0
    date = date_unformatted[0, 10]
    year, month, day = date.split('-')
    date_time = "#{day}-#{month}-#{year}"
  end
end
