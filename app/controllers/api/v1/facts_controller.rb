module Api
  module V1
    class FactsController < ApplicationController
      protect_from_forgery with: :null_session

      def index
        facts = Fact.all
        render json: facts, adapter: :json_api
      end

      def show
        fact = Fact.find_by(slug: params[:slug])
        render json: fact, adapter: :json_api
      end

      def create
        fact = Fact.new(fact_params)

        if fact.save
          render json: fact, adapter: :json_api
        else
          render json: {error: fact.errors.messages}, status: 422
        end    
      end


      private

      def fact_params
        params.require(:fact).permit(:title, :summary, :image_url, :website_origin, :category_id)
      end
    end
  end
end