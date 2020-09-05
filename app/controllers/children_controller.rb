class ChildrenController < ApplicationController

    def index
        @childs=Child.all
    end

    def show
      @child=Child.find(param[:id])
    end

    def new
        @child=Child.new
    end

    def create
        @child=Child.create(child_params)
        if @child.save
            redirect_to child_path
        else
            redirect_to new_child_path
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
        params.permit(:child).permit(:name, :user_name, :age)
    end

end