class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    @product = Product.new(product_type_id: params[:product_type_id])
  end

  def create
    @product = Product.new

  end

  private

  def product_params
  end
end
