class Project < ApplicationRecord
    def get_projects
        response = HTTParty.get("https://api.github.com/users/#{ChrisWarner94}/repos")
        
        response.each do |repo|
            puts repo
            
        end
        
    end
end
