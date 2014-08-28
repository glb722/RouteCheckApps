class EquipmentThingsToChecksController < ApplicationController
  before_action :set_equipment_things_to_check, only: [:show, :edit, :update, :destroy]
  
  # GET /equipment_things_to_checks
  # GET /equipment_things_to_checks.json
  def index
    @equipment_things_to_checks = EquipmentThingsToCheck.all
  end

  # GET /equipment_things_to_checks/1
  # GET /equipment_things_to_checks/1.json
  def show
  end

  # GET /equipment_things_to_checks/new
  def new
    @equipment_things_to_check = EquipmentThingsToCheck.new
  end

  # GET /equipment_things_to_checks/1/edit
  def edit
  end

  # POST /equipment_things_to_checks
  # POST /equipment_things_to_checks.json
  def create
    @equipment_things_to_check = EquipmentThingsToCheck.new(equipment_things_to_check_params)
    
    
    respond_to do |format|
      if @equipment_things_to_check.save
        format.html { redirect_to @equipment_things_to_check, notice: 'Equipment things to check was successfully created.' }
        format.json { render action: 'show', status: :created, location: @equipment_things_to_check }
      else
        format.html { render action: 'new' }
        format.json { render json: @equipment_things_to_check.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /equipment_things_to_checks/1
  # PATCH/PUT /equipment_things_to_checks/1.json
  def update
    respond_to do |format|
      if @equipment_things_to_check.update(equipment_things_to_check_params)
        format.html { redirect_to @equipment_things_to_check, notice: 'Equipment things to check was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @equipment_things_to_check.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipment_things_to_checks/1
  # DELETE /equipment_things_to_checks/1.json
  def destroy
    @equipment_things_to_check.destroy
    respond_to do |format|
      format.html { redirect_to equipment_things_to_checks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equipment_things_to_check
      @equipment_things_to_check = EquipmentThingsToCheck.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def equipment_things_to_check_params
      params.require(:equipment_things_to_check).permit(:name)
    end
end
