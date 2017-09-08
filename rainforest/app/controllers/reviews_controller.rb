class ReviewsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new
    @review.comment = params[:review][:comment]
    if @review.save
      redirect_to product_path(params[:product_id])
    else
      redirect_to product_path(params[:product_id])
    end
  end

  def edit

  end

  def update

  end

  def destroy

  end

end


#This comes when you click on create comment
#params={"utf8"=>"✓",
#  "authenticity_token"=>"aTi4RqJRtc5mTK345EtRCHNDAiGNfWLpHNeudgHzT6UBBGTiT0lASqjr1p4jLabzmFgYySTSv3IisDPgRLh/Tw==",
#  "review"=>{"comment"=>"great vacuum lots of fun\r\n"},
#  "commit"=>"Create Review",
#  "product_id"=>"10"}
