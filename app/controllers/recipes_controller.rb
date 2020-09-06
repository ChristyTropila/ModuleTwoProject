class RecipesController < ApplicationController
#   before_action :current_user
# before_action :set_current_user

    def index
        @recipes=Recipe.all
    end

    def show
        @recipe=Recipe.find(params[:id])
    end

    def new
      @recipe=Recipe.new
     
    end

    def create
        @recipe=Recipe.create(recipe_params)
    
        if @recipe.save
            redirect_to new_food_items_path
        else
            redirect_to new_recipes_path
        end
    end

    def edit
    end

    def update
    end
    
    def destroy
    end


    private

    def recipe_params
        params.require(:recipe).permit(:id, :title, :child_id)
    end

    # def current_user
    #     @current_user ||= begin
    #     Child.find(session[:id]) if session[:id]
    #    end
    #   helper_method :current_user
    #  end


    end
