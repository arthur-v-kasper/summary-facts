module Api
  module V1
    class CategoriesController < ApplicationController
      def index
        categories = Category.all
        render json: categories, adapter: :json_api
      end

      def show
        category = Category.find_by(slug: params[:slug])
        render json: category, adapter: :json_api
      end
    end
  end
end