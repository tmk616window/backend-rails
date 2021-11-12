class Api::V1::ChatPageController < ApplicationController
    def show
        @user = User.find(params[:id])
          render json: { status: 200, user: @user  }
        end  
end
