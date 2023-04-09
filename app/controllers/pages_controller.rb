class PagesController < ApplicationController
    def home
        @technologies = Technology.all
        image_class = "stack-image"
    end
    
end
