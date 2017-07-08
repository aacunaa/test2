module Api
    class StageController < ApplicationController
    	def index
		    @stage = Stage.where(:business_id=>params[:business_id])
		    #@business = Business.where(:id=>params[:business_id])
		   	render json: @stage

		end
		def new
			@stage = Stage.new
		end
		def create
			@stage = Stage.new(stage_params)
		end
    end
end