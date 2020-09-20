class BillersController < ApplicationController
  def new
    @biller = Biller.new
  end

  def create
    @biller = Biller.new(biller_params)
    if @biller.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @biller = Biller.find(params[:id])
    @biller.destroy
  end

  def show
  end

end
