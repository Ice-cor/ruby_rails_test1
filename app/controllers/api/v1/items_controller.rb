class Api::V1::ItemsController < ApplicationController
  def index
    items = Item.page(:page)
    render json: {
      resource: items,
      page_info: {
        page:,
        per_page:10,
        total: items.count
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
