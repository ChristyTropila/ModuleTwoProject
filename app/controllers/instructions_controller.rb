class InstructionsController < ApplicationController

def index
    @instructions=Instruction.all
end

def show
    @current_instruction=Instruction.find_by(id: session[:instruction_id])
    @current_recipe=Recipe.find_by(id: session[:recipe_id])
end

def new
    @current_recipe=Recipe.find_by(id: session[:recipe_id])
    @instruction=Instruction.new
    @errors=flash[:errors]
end

def create

 @instruction=Instruction.create(instruction_params)
    if @instruction.save
        session[:instruction_id]=@instruction.id
        redirect_to instruction_path(@instruction)
    else
        flash[:errors]=@instruction.errors.full_messages
        redirect_to new_instructions_path
    end
end


def edit
   @current_instruction=Instruction.find_by(id: session[:instruction_id])
end

def update
    @current_instruction=Instruction.find_by(id: session[:instruction_id])
    @current_instruction.update(instruction_params)
    redirect_to instruction_path(@current_instruction)

end

def destroy
end

private

def instruction_params
    params.require(:instruction).permit(:content, :food_item_id, :kitchen_tool_id, :recipe_id)
end

end