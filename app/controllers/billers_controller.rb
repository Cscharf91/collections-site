class BillersController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :index]

  def index
    @billers = Biller.all
  end

  def new
    @biller = Biller.new
  end

  def create
    @biller = Biller.new(biller_params)
    if @biller.save
      redirect_to biller_path(@biller)
    else
      render :new
    end
  end

  def edit
  end

  def destroy
    @biller = Biller.find(params[:id])
    @biller.destroy
    redirect_to billers_path
  end

  def show
  end

  private

  def biller_params
    params.require(:biller).permit(:company_name, :name, :email, :phone, :amount_owed, :number_of_accounts, :time_outstanding, :industry, :details)
  end

end
