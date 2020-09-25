class CollectionsController < ApplicationController
  before_action :set_collection, only: [:show, :edit, :update, :destroy]

  def index
    if params[:commit]
      if params[:search_type] == "Account Number"
        @collection = Collection.find_by(account_number: params[:search])
        puts @collection
      elsif params[:search_type] == "Last Name"
        @collection = Collection.find_by(lname: params[:search])
        puts @collection
      elsif params[:search_type] == "Date of Birth"
        @collection = Collection.find_by(dob: params[:search])
        puts @collection
      end
    end
  end

  def show
    @practice = Practice.find(@collection.practice_id)
    # @notes = @practice.notes.all.order('created_at DESC')
  end

  def new
    @collection = Collection.new
    @practices = Practice.all.map { |u| [u.code, u.id] }
  end

  def edit
    @practices = Practice.all.map { |u| [u.code, u.id] }
  end

  def create
    @collection = Collection.new(collection_params)
    if @collection.save
      @collection.account_number = @collection.id + 1000
      @collection.save
      redirect_to @collection, notice: 'Collection was successfully created.'
    else
      render :new
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
  
  def new_note
    new_note = Note.new(collection_id: params[:collection_id], message: params[:message])
    puts new_note.errors.full_messages if !new_note.save
    redirect_back(fallback_location: root_path)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collection
      @collection = Collection.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def collection_params
      params.require(:collection).permit(:account_number, :ssn, :dob, :lname, :fname, :money_due, :money_paid, :practice_id, :total_due, :phone, :phone2, :phone3, :notes, :search, :address, :address2, :city, :state, :zip, :scan)
    end
end
