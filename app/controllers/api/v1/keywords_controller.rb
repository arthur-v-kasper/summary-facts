module Api
  module V1
    class KeywordsController < ApplicationController
      protect_from_forgery with: :null_session

      def index
        keywords = Keyword.all

        render json: keywords, adapter: :json
      end

      def create
        keyword = Keyword.new(params_keyword)

        if keyword.save
          render json: keyword, adapter: :json
        else
          render json: {errors: keyword.errors.messages}, status:  422
        end
      end

      private 
      def params_keyword
        params.require(:keyword).permit(:word)
      end
    end
  end
end