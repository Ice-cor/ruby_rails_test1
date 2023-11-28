class Api::V1::ItemsController < ApplicationController
  def show
    items = Item.page(params[:page]).per(params[:per_page])
    render json: {
      resources: items,
      pager: {
        page: params[:page],
        per_page: params[:per_page],
        count: Item.count
      }
    }
  end
  def create
    item = Item.new amount: 1
    if item.save
      render json: {resource: item}
    else
      render json: {errors: item.errors}
    end
  end
end
