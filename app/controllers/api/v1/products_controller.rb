class Api::V1::ProductsController < Api::V1::BaseController
  def index
    respond_with Product.all
  end

  def create
    respond_with :api, :v1, Product.create(product_params)
  end

  def destroy
    respond_with Product.destroy(params[:id])
  end

  def update
    product = Product.find(params["id"])
    product.update_attributes(product_params)
    respond_with product, json: product
  end

  private

  def item_params
    params.require(:product).permit(:id, :name, :content)
  end
end
