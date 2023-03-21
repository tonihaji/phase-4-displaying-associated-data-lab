class ItemsController < ApplicationController
    def index
      items = Item.all.map { |item| item.as_json.merge(user: item.user.as_json(only: [:id, :username, :city])) }
      render json: items
    end
  end
  