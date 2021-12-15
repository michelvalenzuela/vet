class PetHistoriesController < ApplicationController
  before_action :set_pet_history, only: [:show, :edit, :update, :destroy]

  # GET /pet_histories
  # GET /pet_histories.json
  def index
    @pet_histories = PetHistory.all
  end

  # GET /pet_histories/1
  # GET /pet_histories/1.json
  def show
  end

  # GET /pet_histories/new
  def new
    @pet_history = PetHistory.new
  end

  # GET /pet_histories/1/edit
  def edit
  end

  # POST /pet_histories
  # POST /pet_histories.json
  def create
    @pet_history = PetHistory.new(pet_history_params)

    if @pet_history.save
      redirect_to @pet_history, notice: 'Pet history was successfully created.' 
    else
      render :new 
    end
  end

  # PATCH/PUT /pet_histories/1
  # PATCH/PUT /pet_histories/1.json
  def update
    if @pet_history.update(pet_history_params)
      redirect_to @pet_history, notice: 'Pet history was successfully updated.' 
    else
      render :edit 
    end
  end

  # DELETE /pet_histories/1
  # DELETE /pet_histories/1.json
  def destroy
    @pet_history.destroy
    redirect_to pet_histories_url, notice: 'Pet history was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet_history
      @pet_history = PetHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pet_history_params
      params.require(:pet_history).permit(:weight, :heigth, :description, :pet_id)
    end
end
