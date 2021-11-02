class Api::V1::Auth::SessionsController < ApplicationController
    def index
      if current_api_v1_user
        render json: {currentUser:{ isLogin: true, data: current_api_v1_user }}
      else
        render json: {currentUser:{ isLogin: false, message: current_api_v1_user }}
      end
    end
  end
  