class OwnersController < ApplicationController
  before_action :set_owner, only: %i[ show edit update destroy ]

  # GET /owners or /owners.json
  def index
    @owners = Owner.all
  end

  # GET /owners/1 or /owners/1.json
  def show
  end

  # GET /owners/new
  def new
    @owner = Owner.new
  end

  # GET /owners/1/edit
  def edit
  end

  # POST /owners or /owners.json
  def create
    @owner = Owner.new(owner_params)

    if @owner.save
      redirect_to @owner, notice: "Owner was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /owners/1 or /owners/1.json
  def update
    if @owner.update(owner_params)
      redirect_to @owner, notice: "Owner was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /owners/1 or /owners/1.json
  def destroy
    @owner.destroy
    redirect_to owners_url, notice: "Owner was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_owner
      @owner = Owner.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def owner_params
      params.require(:owner).permit(:name, :phone_number, :email)
    end
end
