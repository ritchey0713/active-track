class ActivitiesController < ApplicationController

    def index 
        @activities = Activity.all 
    end 

    def new 
        @activity = activity.new
    end 

    def create 

    end 

    def show 

    end
    
    def edit 

    end 

    def update 

    end 

    def destroy 

    end 

    private 

    def set_activity 
        @activity = Activity.find_by(id: params[:id])
    end 


end
