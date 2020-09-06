class RecipesController < ApplicationController

    def index
        @recipes=Recipe.all
    end

    def show
        @current_recipe=Recipe.find_by(id: session[:recipe_id])
       
    end

    def new
      @recipe=Recipe.new
     
    end

    def create
        @recipe=Recipe.create(recipe_params)
    
        if @recipe.save
            session[:recipe_id]=@recipe.id
            @recipe.update_attributes(rewarded_points: 50)
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


    end
