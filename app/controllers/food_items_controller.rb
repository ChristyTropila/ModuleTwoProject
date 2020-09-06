class FoodItemsController < ApplicationController

    def index
        @foods=FoodItem.all
    end

    def show
        @food=FoodItem.find(params[:id])
    end

    def new
        @food_var=FoodItem.all
        @food=FoodItem.new
    
    end

    def create
        @food=FoodItem.create(food_params)
        if @food.save
            redirect_to new_kitchen_tools_path(@food)
        else
            redirect_to new_food_items_path
        end
    end

    def edit
    end

    def destroy
    end

    private

    def food_params
        params.require(:food_item).permit(:name, :quantity)

    end

end