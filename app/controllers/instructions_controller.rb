class InstructionsController < ApplicationController

def index
    @instructions=Instruction.all
end

def show
    @instruction=Instruction.find(params[:id])
end

def new
    @instruction=Instruction.new
    @errors=flash[:errors]
end

def create

 @instruction=Instruction.create(instruction_params)
    if @instruction.save
        redirect_to recipe_path(@instruction)
    else
        flash[:errors]=@instruction.errors.full_messages
        redirect_to new_instructions_path
    end
end


def edit
    @instruction=Instruction.find(params[:id])
end

def update
    @instruction=Instruction.find(params[:id])
    @instruction.update(instruction_params)
    redirect_to recipe_path(@instruction)

end

def destroy
end

private

def instruction_params
    params.require(:instruction).permit(:content, :recipe_id, :food_item_id, :kitchen_tool_id)
end

end