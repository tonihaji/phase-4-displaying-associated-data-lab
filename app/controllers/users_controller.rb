class UsersController < ApplicationController
    def show
      user = User.find(params[:id])
      items = user.items.as_json(only: [:id, :name, :description, :price])
      render json: user.as_json(only: [:id, :username, :city]).merge(items: items)
    end
  end
  