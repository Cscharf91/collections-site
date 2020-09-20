class CollectionsController < ApplicationController
  before_action :set_collection, only: [:show, :edit, :update, :destroy]

  def index
    if params[:commit]
      @collection = Collection.find_by(account_number: params[:search])
    end
  end

  def show
    @practice = Practice.find(@collection.practice_id)
  end

  def new
    @collection = Collection.new
    @practices = Practice.all.map { |u| [u.code, u.id] }
  end

  def edit
    @practices = Practice.all.map { |u| [u.code, u.id] }
  end

  def create
    #@practice = Practice.find(params[:practice_id])
    @collection = Collection.new(collection_params)

    respond_to do |format|
      if @collection.save
        format.html { redirect_to @collection, notice: 'Collection was successfully created.' }
        format.json { render :show, status: :created, location: @collection }
      else
        format.html { render :new }
        format.json { render json: @collection.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @collection.update(collection_params)
        format.html { redirect_to @collection, notice: 'Collection was successfully updated.' }
        format.json { render :show, status: :ok, location: @collection }
      else
        format.html { render :edit }
        format.json { render json: @collection.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @collection.destroy
    respond_to do |format|
      format.html { redirect_to collections_url, notice: 'Collection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collection
      @collection = Collection.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def collection_params
      params.require(:collection).permit(:account_number, :lname, :fname, :money_due, :money_paid, :practice_id, :total_due, :phone, :phone2, :phone3, :notes, :search, :scan)
    end
end
