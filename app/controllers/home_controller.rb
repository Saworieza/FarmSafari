class HomeController < ApplicationController
  def index
  	@categories = Category.order('created_at DESC')
  	@products = Product.order('created_at DESC').paginate(:page => params[:page], :per_page => 6)
  end
end
