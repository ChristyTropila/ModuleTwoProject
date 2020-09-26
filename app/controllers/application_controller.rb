class ApplicationController < ActionController::Base
  
   helper_method :check_and_see_if_someone_is_logged_in?
   before_action :authorized_to_see_page


 def set_current_child
    @current_child=Child.find_by(id: session[:child_id])
 end

 def check_and_see_if_someone_is_logged_in?
     !set_current_child.nil?     
 end

 def authorized_to_see_page
    redirect_to login_path unless check_and_see_if_someone_is_logged_in?
 end




def current_child
    session[:child] ||= []

end

def current_recipe
    session[:recipe] ||= []
end

def current_food
    session[:food_item] ||= []
end

def current_tool
    session[:kitchen_tool] ||= []
end

def current_instruction
    session[:instruction] ||= []
end

end
