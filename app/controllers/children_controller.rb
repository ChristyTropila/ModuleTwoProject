class ChildrenController < ApplicationController


    def login
    end

    def handle_login
        @child=Child.find_by(name: params[:name])
        if @child && @child.authenticate(params[:password])
          redirect_to child_path(@child)
        else
          redirect_to login_path
        end
    end

    def index
        @children=Child.all
    end

    def show
      @current_child=Child.find_by(id: session[:child_id])
    end

    def new
        @child=Child.new
        @errors=flash[:errors]
    end

    def create
        @child=Child.create(child_params)
        if @child.save
          session[:child_id]=@child.id
            redirect_to child_path(@child)
            # byebug
        else
            flash[:errors]=@child.errors.full_messages
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
        params.require(:child).permit(:id, :name, :user_name, :age, :password)
    end

end