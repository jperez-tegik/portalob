	
class Api::V1::AdImagesController < ApplicationController
	def show
		order_link = "http://csalinas-tegik:KopoTegik@ec2-54-161-209-119.compute-1.amazonaws.com:8080/openbravo/org.openbravo.service.json.jsonrest/ADImage/"+params[:id]
		puts order_link
		response = RestClient.get order_link 
		json_response = JSON.parse response, symbolize_names: true

   	respond_to do |format|
  		format.json {render json:  json_response}
	  end
	end
end
