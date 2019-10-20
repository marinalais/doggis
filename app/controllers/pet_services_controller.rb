class PetServicesController < ApplicationController
  before_action :set_pet_service, only: [:show, :edit, :update, :destroy]

  # GET /pet_services
  # GET /pet_services.json
  def index
    @pet_services = PetService.all
  end

  # GET /pet_services/1
  # GET /pet_services/1.json
  def show
  end

  # GET /pet_services/new
  def new
    @pet_service = PetService.new
  end

  # GET /pet_services/1/edit
  def edit
  end

  # POST /pet_services
  # POST /pet_services.json
  def create
    @pet_service = PetService.new(pet_service_params)

    respond_to do |format|
      if @pet_service.save
        format.html { redirect_to @pet_service, notice: 'Pet service was successfully created.' }
        format.json { render :show, status: :created, location: @pet_service }
      else
        format.html { render :new }
        format.json { render json: @pet_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pet_services/1
  # PATCH/PUT /pet_services/1.json
  def update
    respond_to do |format|
      if @pet_service.update(pet_service_params)
        format.html { redirect_to @pet_service, notice: 'Pet service was successfully updated.' }
        format.json { render :show, status: :ok, location: @pet_service }
      else
        format.html { render :edit }
        format.json { render json: @pet_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pet_services/1
  # DELETE /pet_services/1.json
  def destroy
    @pet_service.destroy
    respond_to do |format|
      format.html { redirect_to pet_services_url, notice: 'Pet service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet_service
      @pet_service = PetService.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pet_service_params
      params.require(:pet_service).permit(:duration, :price, :name, :description, :pataz_value_free, :pataz_amount, :user_id)
    end
end
