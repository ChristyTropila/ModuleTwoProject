class ApplicationController < ActionController::Base
helper_method :current_child

def current_child
    session[:child] ||= []

end

def current_recipe
    session[:recipe] ||= []
end

end
