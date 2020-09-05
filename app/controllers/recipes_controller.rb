class RecipesController < ApplicationController


    def index
        @recipes=Recipe.all
    end

    def show
        @recipe=Recipe.find(params[:id])
    end

    def new

     @recipe=Recipe.new
     @child=Child.all
       
    end

    def create
        @recipe=Recipe.create(recipe_params)
        @recipe.child_id=
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


end