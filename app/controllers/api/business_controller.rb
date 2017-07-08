module Api
    class BusinessController < ApplicationController 
	    def index
	    	@business = Business.order('created_at DESC')
	    	render json: @business
		end 
    end
end