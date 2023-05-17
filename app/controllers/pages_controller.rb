# frozen_string_literal: true

require 'open-uri'

class PagesController < ApplicationController
  def home
    @technologies = Technology.all
    @projects = Project.all
    @contact = Contact.new
  end
end
