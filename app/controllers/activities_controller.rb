class ActivitiesController < ApplicationController

    def index 
        @activities = Activity.all 
    end 

    def new 
        @activity = Activity.new

    end 

    def create 
        @activity = Activity.new(activity_params)

        if @activity.save 
            redirect_to activities_path
        else 
            redirect_to new_activity_path
        end 
        
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

    def activity_params
        params.require(:activity).permit(
            :user_id,
            :name,
            :duration,
            :notes
        )
    end 


end
