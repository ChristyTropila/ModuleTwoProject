class ApplicationController < ActionController::Base
helper_method :current_child

def current_child
    session[:child] ||= []
    byebug
end

end
