class FoodItemsController < ApplicationController

    def index
        @foods=FoodItem.all
    end

    def show
        @current_food=FoodItem.find_by(id: session[:food_item_id])
    end

    def new
        @food=FoodItem.new
        @food_cond=FoodItem.all.select{|food| food.quantity==nil}
        @food_var=@food_cond.map{|food| [food.name]}

        @errors=flash[:errors]
    end

    def create
        @food=FoodItem.find_or_create_by(food_params)
        if @food.save
            session[:food_item_id]=@food.id
            redirect_to new_kitchen_tools_path(@food)
        else
            flash[:errors]=@food.errors.full_messages
            redirect_to new_food_items_path
        end
    end

    def edit
        params
        @current_food=FoodItem.find_by(id: session[:food_item_id])
        @food_cond=FoodItem.all.select{|food| food.quantity==nil}
        @food_var=@food_cond.map{|food| [food.name]}
    end

    def update
        @current_food=FoodItem.find_by(id: session[:food_item_id])
        @current_food.update(food_params)
        redirect_to edit_kitchen_tool_path
    end

    def destroy

    end

    private

    def food_params
        params.require(:food_item).permit(:quantity, :name=> [])

    end

end