class ProductsController < ApplicationController

  def create

  end

  def new
  end

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    # @reviews = 
  end

  def edit
  end

  def update
  end

  def destroy

  end











end
