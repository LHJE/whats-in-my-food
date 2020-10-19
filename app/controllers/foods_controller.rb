class FoodsController < ApplicationController
  def index
    @foods_total = SearchFacade.find_foods_info(params[:q])
    @foods_info = FoodInfo.all.limit(10)
  end
end
