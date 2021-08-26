class CallsController < ApplicationController
  def create
    @customer = Customer.find(params[:customer_id])
    @customer.calls.create(call_params)
    redirect_to customer_path(@customer)
  end

  def destroy
    @customer = Customer.find(params[:customer_id])
    @call = @customer.calls.find(params[:id])
    @image.destroy
    redirect_to customer_path(@customer)
  end


  private
 	def call_params
 		params.require(:call).permit(
 		:statu, #ステータス
    #:sfa_statu,
 		:time, #再コール
 		:comment, #コメント
    #:tel,
    :item_select => []
    )
 	end
end
