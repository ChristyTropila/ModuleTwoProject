class RecipesController < ApplicationController

    def index
        @recipes=Recipe.all
    end

    def show
        @current_recipe=Recipe.find_by(id: session[:recipe_id])
    end

    def new
      @recipe=Recipe.new
      @errors=flash[:errors]
    end

    def create
        @recipe=Recipe.create(recipe_params)
        @recipe.update_points(@recipe)
        byebug
    
        if @recipe.save
            session[:recipe_id]=@recipe.id
            redirect_to new_food_items_path
        else
            flash[:errors]=@recipe.errors.full_messages
            redirect_to new_recipes_path
        end
    end

    def edit
        @current_recipe=Recipe.find_by(id: session[:recipe_id])
    end

    def update
        @current_recipe=Recipe.find_by(id: session[:recipe_id])
        @current_recipe.update(recipe_params)
        redirect_to edit_food_item_path(@current_recipe)
    end
    
    def destroy
    end


    private

    def recipe_params
        params.require(:recipe).permit(:id, :title, :child_id)
    end


    end
