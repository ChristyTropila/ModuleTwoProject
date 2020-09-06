class KitchenToolsController < ApplicationController

    def index
        @tools=KitchenTool.all

    end

    def show
        @tool=KitchenTool.find(params[:id])
    end

    def new
        @tool=KitchenTool.new
        @tool_var=KitchenTool.all

    end

    def create
        @tool=KitchenTool.create(kitchen_params)
        if @tool.save
            redirect_to new_instructions_path
        else
            redirect_to new_kitchen_tools_path
        end
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def kitchen_params
        params.require(:kitchen_tool).permit(:name, :description)
    end
end
