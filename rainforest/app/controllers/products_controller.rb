class ProductsController < ApplicationController

  def create
    @product = Product.new

    @product.name = params[:product][:name]
    @product.description = params[:product][:description]
    @product.price_in_cents = params[:product][:price_in_cents]
    if @product.save
      redirect_to products_path
    else
      render :new
    end
    flash.notice = "You added a new product to our store, Fantastic!"
  end

  def new
    @product = Product.new

  end

  def index
    @products = Product.all

  end

  def show
    @product = Product.find(params[:id])

    @review = @product.reviews.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.name = params[:product][:name]
    @product.description = params[:product][:description]
    @product.price_in_cents = params[:product][:price_in_cents]
    if @product.save
      redirect_to products_path
    else
      render :edit
    end
    flash.notice = "You edited a product, Gold Star!!!"
  end

  def destroy
    @product = Product.find(params[:id])
    if @product.destroy
      redirect_to products_path
    else
      render :show
    end
    flash.notice = "Good Job, little buddy you deleted a product."
  end





end
