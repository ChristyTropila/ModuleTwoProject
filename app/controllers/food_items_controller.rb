class FoodItemsController < ApplicationController

    def index
        @foods=FoodItem.all
    end

    def show
        @current_food=FoodItem.find_by(id: session[:food_item_id])
    end

    def new
        @food_var=FoodItem.all
        @food=FoodItem.new
    
    end

    def create
        @food=FoodItem.create(food_params)
        if @food.save
            session[:food_item_id]=@food.id
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