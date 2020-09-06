class InstructionsController < ApplicationController

def index
    @instructions=Instruction.all
end

def show
    @instruction=Instruction.find(params[:id])
end

def new
    @instruction=Instruction.new
end

def create
 @instruction=Instruction.create(instruction_params)
    if @instruction.save
        redirect_to recipe_path(@instruction)
    else
        redirect_to new_instructions_path
    end
end


def edit
end

def update
end

def destroy
end

private

def instruction_params
    params.require(:instruction).permit(:content, :recipe_id, :food_item_id, :kitchen_tool_id)
end

end