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
        # nested atributes
        if fact.save
          render json: fact, adapter: :json_api, status: 201
        else
          render json: {error: fact.errors.messages}, status: 422
        end    
      end

      def destroy
        fact = Fact.find_by(slug: params[:slug])

        if fact.destroy
          head :no_content
        else
          render json: {error: fact.errors.messages}, status: 422
        end

      end

      def update
        fact = Fact.find_by(slug: params[:slug])

        if fact.update(fact_params)
          render json: fact, adapter: :json_api, status: 200
        else
          render json: {error: fact.errors.messages}, status: 422
        end

      end

      private

      def fact_params
        params.require(:fact).permit(
          :title, :summary, :image_url, :website_origin, :category_id,
          keyword_facts_attributes:[{ keywords_attributes: :word } ])
      end
    end
  end
end