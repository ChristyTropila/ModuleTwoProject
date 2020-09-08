class KitchenToolsController < ApplicationController

    def index
        @tools=KitchenTool.all

    end

    def show
        @current_tool=KitchenTool.find_by(id: session[:kitchen_tool_id])
    end

    def new
     
        @tool=KitchenTool.new
        @tool_cond=KitchenTool.all.select{|tool| tool.name!=nil}
        # @tool_var=@tool_cond.map{|tool| [tool.name, tool.description]}
        @errors=flash[:errors]
    end

    def create
    
        @tool=KitchenTool.create(kitchen_params)
        if @tool.save
            session[:kitchen_tool_id]=@tool.id
            redirect_to new_instructions_path
        else
            flash[:errors]=@tool.errors.full_messages
            redirect_to new_kitchen_tools_path
        end
    end

    def edit
        @current_tool=KitchenTool.find_by(id: session[:kitchen_tool_id])
        @tool_var=KitchenTool.all.distinct
    end

    def update
        @current_tool=KitchenTool.find_by(id: session[:kitchen_tool_id])
        @current_tool.update(kitchen_params)
        redirect_to edit_instruction_path(@current_tool)

    end

    def destroy
    end

    private

    def kitchen_params
        params.require(:kitchen_tool).permit(:name)
    end
end
