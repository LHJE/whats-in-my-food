class FoodsController < ApplicationController
  def index
    @foods_info = SearchFacade.find_foods_info(params[:q])
  end
end
