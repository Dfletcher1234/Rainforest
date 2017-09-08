class ReviewsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new
    @review.comment = params[:review][:comment]
    if @review.save
      redirect_to product_path(params[:product_id])
    else
      render "products/show"
    end
  end

  def edit

    @product = Product.find(params[:product_id])
    @review = Review.find(params[:id])
    render "reviews/edit_product_review"


  end

  def update
    @review = Review.find(params[:id])
    @review.comment = params[:review][:comment]
    @product = Product.find(params[:product_id])
    if @review.save
      redirect_to product_path(params[:product_id])
    else
      render "reviews/edit_product_review"
    end

  end

  def destroy
    @review = Review.find(params[:id])
    if @review.destroy
      redirect_to product_path(params[:product_id])
    else
      render :show
    end

  end

end


#This comes when you click on create comment
#params={"utf8"=>"✓",
#  "authenticity_token"=>"aTi4RqJRtc5mTK345EtRCHNDAiGNfWLpHNeudgHzT6UBBGTiT0lASqjr1p4jLabzmFgYySTSv3IisDPgRLh/Tw==",
#  "review"=>{"comment"=>"great vacuum lots of fun\r\n"},
#  "commit"=>"Create Review",
#  "product_id"=>"10"}
