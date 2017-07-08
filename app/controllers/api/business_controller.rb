module Api
    class BusinessController < ApplicationController 
	    def index
	    	@business = Business.order('created_at DESC')
	    	render json: @business
		end
		def new
			@business = Business.new
		end
		def create
			@business = Business.new(business_params)
		    if @business.save
		        render json: @business, status: :created
		    else
		        render json: @business.errors, status: :unprocessable_entity
		    end
		end 
    end
end