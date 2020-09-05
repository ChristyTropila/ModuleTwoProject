class ChildrenController < ApplicationController

    def index
        @children=Child.all
    end

    def show
      @child=Child.find(params[:id])
    #   @recipe=Recipe.find(params[:id])
    #   byebug
    end

    def new
        @child=Child.new
    end

    def create
        @child=Child.create(child_params)
        if @child.save
            redirect_to child_path(@child)
        else
            redirect_to new_children_path
    end
end

    def edit
    end

    def update
    end

    def destroy
    end

    private
    
    def child_params
        params.require(:child).permit(:id, :name, :user_name, :age)
    end

end