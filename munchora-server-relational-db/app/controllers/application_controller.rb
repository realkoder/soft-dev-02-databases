class ApplicationController < ActionController::API
    
    # To be used as a fallback for unknown routes
    def route_not_found
      head :not_found
    end
end
