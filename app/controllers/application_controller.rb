class ApplicationController < ActionController::Base
helper_method :current_child

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
