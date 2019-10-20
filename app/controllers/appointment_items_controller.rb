class AppointmentItemsController < ApplicationController
  before_action :authenticate_user!  
  before_action :set_appointment_item, only: [:show, :edit, :update, :destroy]

  # GET /appointment_items
  # GET /appointment_items.json
  def index
    @appointment_items = AppointmentItem.all
  end

  # GET /appointment_items/1
  # GET /appointment_items/1.json
  def show
  end

  # GET /appointment_items/new
  def new
    @appointment_item = AppointmentItem.new
  end

  # GET /appointment_items/1/edit
  def edit
  end

  # POST /appointment_items
  # POST /appointment_items.json
  def create
    @appointment_item = AppointmentItem.new(appointment_item_params)

    respond_to do |format|
      if @appointment_item.save
        format.html { redirect_to @appointment_item, notice: 'Appointment item was successfully created.' }
        format.json { render :show, status: :created, location: @appointment_item }
      else
        format.html { render :new }
        format.json { render json: @appointment_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appointment_items/1
  # PATCH/PUT /appointment_items/1.json
  def update
    respond_to do |format|
      if @appointment_item.update(appointment_item_params)
        format.html { redirect_to @appointment_item, notice: 'Appointment item was successfully updated.' }
        format.json { render :show, status: :ok, location: @appointment_item }
      else
        format.html { render :edit }
        format.json { render json: @appointment_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointment_items/1
  # DELETE /appointment_items/1.json
  def destroy
    @appointment_item.destroy
    respond_to do |format|
      format.html { redirect_to appointment_items_url, notice: 'Appointment item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment_item
      @appointment_item = AppointmentItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appointment_item_params
      params.require(:appointment_item).permit(:petservice_id, :appointment_id)
    end
end
