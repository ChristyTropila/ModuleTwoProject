class KitchenToolsController < ApplicationController

    def index
        @tools=KitchenTool.all

    end

    def show
        @current_tool=KitchenTool.find_by(id: session[:kitchen_tool_id])
    end

    def new
        @tool=KitchenTool.new
        @tool_var=KitchenTool.all

    end

    def create
        @tool=KitchenTool.create(kitchen_params)
        if @tool.save
            session[:kitchen_tool_id]=@tool.id
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
