class ProjectsController < ApplicationController
    def index
        @projects = Project.all
        render :json => @projects, :include => {:todos => {:only => [:id, :text, :is_completed]}}, :except => [:created_at, :updated_at]
    end
end