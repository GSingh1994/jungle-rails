class Admin::DashboardController < ApplicationController
  def show
      @total_quantity=Product.sum(:quantity)
      @total_categories=Category.count
  end
end
