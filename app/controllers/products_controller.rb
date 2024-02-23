class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]
  before_action :set_product, only: [:edit, :update]

  def index 
    @products = Product.all
  end

  def new
    @product = Product.new
  end
  def create
    @product = Product.new(product_params)

    if @product.save
      flash[:success] = "Yay!"
      redirect_to products_path
    else
      flash[:danger] = "Nay!"
      render 'new'
    end
  end

  def edit; end

  def update
    if @product.update(product_params)
      flash[:success] = "Yay! Product updated."
      redirect_to products_path
    else
      flash[:danger] = "Nay! Product didn't update."
      render "edit"
    end
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name,
                                    :description,
                                    :price_cents)
  end
end
