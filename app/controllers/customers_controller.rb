class CustomersController < ApplicationController
  #before_action :authenticate_admin!, expect: [:new, :create]

  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
     if @customer.save
       redirect_to customers_path
     else
       render 'new'
     end
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
      if @customer.update(customer_params)
        redirect_to customer_path
      else
        render 'edit'
      end
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    redirect_to customers_path
  end

  private
    def customer_params
      params.require(:customer).permit(
        :ad_name,
        :adset_name,
        :campaign_name,
        :form_name,
        :platform,
        :company_name,
        :full_name,
        :phone_number,
        :email,
        :postnumber, #郵便番号
        :address, #住所
        :url, #ビル名・号室
        :industry, #ビル名・号室
        :item, #取引商品
        :price, #送信単価
        :number, #件数
        :history, #過去アポ利用履歴
        :area, #ターゲットエリア
        :option, #オプション
        :target, #対象者
        :next, #次回営業日
        :content #サービス内容
       )
    end
end
