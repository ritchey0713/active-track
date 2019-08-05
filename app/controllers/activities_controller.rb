class ActivitiesController < ApplicationController
    before_action :set_activity, only: [:show, :edit, :update, :destroy]
    before_action :set_categories, only: [:edit, :new]

    def index 
        @activities = Activity.all 
    end 

    def new 
        @activity = Activity.new

    end 

    def create 
        byebug
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
        byebug
        if @activity.update(activity_params)
            redirect_to activity_path(@activity)
        else 
            redirect_to edit_activity_path(@activity)
        end 
    end 

    def destroy 
        @activity.destroy
        redirect_to activities_path

    end 

    private 

    def set_activity 
        @activity = Activity.find_by(id: params[:id])
    end 

    def set_categories 
        @categories = Category.all 
    end 

    def activity_params
        params.require(:activity).permit(
            :user_id,
            :name,
            :duration,
            :notes,
            :category_id,
            :category_attributes => [:id, :name, :points]
        )
    end 


end
