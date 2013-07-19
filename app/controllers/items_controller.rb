class ItemsController < ApplicationController

	skip_before_filter :verify_authenticity_token

	def index
		render :json => Item.all.to_json
	end

	def create
		item = Item.create(text: params[:text])
		render :json => item.to_json
	end

	def show
		item = Item.find(params[:id])
		render :json => item.to_json
	end

	def update
		item = Item.find(params[:id])
		item.status = params[:status]
		item.save

		render :json => item.to_json
	end

	def destroy
		item = Item.find(params[:id]).destroy!
		render :json => item.to_json
	end
end