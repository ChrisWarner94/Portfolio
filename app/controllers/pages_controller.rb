class PagesController < ApplicationController
    def home
        @technologies = Technology.all
        @projects = Project.all
    end
    
end
