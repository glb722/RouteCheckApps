class EquipmentController < ApplicationController
  before_action :set_equipment, only: [:show, :edit, :update, :destroy]
  helper_method :check
  # GET /equipment
  # GET /equipment.json
  def index
    @equipment = Equipment.all
  end

  # GET /equipment/1
  # GET /equipment/1.json
  def show
  end

  # GET /equipment/new
  def new
    @equipment = Equipment.new
  end

  # GET /equipment/1/edit
  def edit
  end

  # POST /equipment
  # POST /equipment.json
  def create
    @equipment = Equipment.new(equipment_params)
    @equipment_things_to_check_list = params[:ETTC]

    
    for r in @equipment_things_to_check_list
      if r 
         @equipment_things_to_check = EquipmentThingsToCheck.find_by_id(r);
        @equipment.equipment_things_to_check << @equipment_things_to_check
      end
    end
    

    respond_to do |format|
      if @equipment.save
        format.html { redirect_to @equipment, notice: 'Equipment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @equipment }
      else
        format.html { render action: 'new' }
        format.json { render json: @equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /equipment/1
  # PATCH/PUT /equipment/1.json
  def update
    @equipment_things_to_check_list = params[:ETTC]

    
    for r in @equipment_things_to_check_list
      if r 
         @equipment_things_to_check = EquipmentThingsToCheck.find_by_id(r);
         unless(@equipment.equipment_things_to_check.include?(@equipment_things_to_check))
            @equipment.equipment_things_to_check << @equipment_things_to_check
         end
      end
    end
    respond_to do |format|
      if @equipment.update(equipment_params)
        format.html { redirect_to @equipment, notice: 'Equipment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @equipment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipment/1
  # DELETE /equipment/1.json
  def destroy
    @equipment.destroy
    respond_to do |format|
      format.html { redirect_to equipment_index_url }
      format.json { head :no_content }
    end
  end

  def check(id)
       @ettcheck = EquipmentThingsToCheck.find_by_id(id);
      if (@equipment.equipment_things_to_check.include?(@ettcheck))
        return true
      else
        return false
      end
  end
    

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equipment
      @equipment = Equipment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def equipment_params
      params.require(:equipment).permit(:name)
    end
end
