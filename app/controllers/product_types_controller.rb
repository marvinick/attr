class ProductTypesController < ApplicationController

  def index
    @product_types = ProductType.all
  end

  def show
    @product_type = ProductType.find(params[:id])
  end


  def new
    @product_type = ProductType.new
  end

  def edit
    @product_type = ProductType.find(params[:id])
  end

  def create
    @product_type = ProductType.new(product_type_params)
    if @product_type.save
      redirect_to @product_type, notice:"Good job"
    else
      render "new"
    end
  end

  # PUT /product_types/1
  # PUT /product_types/1.json
  def update
    @product_type = ProductType.find(params[:id])

    respond_to do |format|
      if @product_type.update(product_type_params)
        format.html { redirect_to @product_type, notice: 'Product type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @product_type = ProductType.find(params[:id])
    @product_type.destroy

    respond_to do |format|
      format.html { redirect_to product_types_url }
      format.json { head :no_content }
    end
  end

  private

  def product_type_params
	  params.require(:product_type).permit(:name, fields_attributes: [ :field_type, :name, :required ] )
  end
end
