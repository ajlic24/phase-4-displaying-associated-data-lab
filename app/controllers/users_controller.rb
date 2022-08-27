class UsersController < ApplicationController
    def show
        item = User.find_by(id: params[:id])
        render json: item, include: [:items]
    end
end
