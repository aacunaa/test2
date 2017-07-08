module Api
    class StageController < ApplicationController
    	before_action :authenticate, only: [:create, :destroy]
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
		    if @stage.save
		        render json: @stage, status: :created
		    else
		        render json: @stage.errors, status: :unprocessable_entity
		    end
		end
    end
end