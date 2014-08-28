class EquipmentRoomsController < ApplicationController
  before_action :set_equipment_room, only: [:show, :edit, :update, :destroy]

  # GET /equipment_rooms
  # GET /equipment_rooms.json
  def index
    @equipment_rooms = EquipmentRoom.all
  end

  # GET /equipment_rooms/1
  # GET /equipment_rooms/1.json
  def show
  end

  # GET /equipment_rooms/new
  def new
    @equipment_room = EquipmentRoom.new
  end

  # GET /equipment_rooms/1/edit
  def edit
  end

  # POST /equipment_rooms
  # POST /equipment_rooms.json
  def create
    @equipment_room = EquipmentRoom.new(equipment_room_params)

    respond_to do |format|
      if @equipment_room.save
        format.html { redirect_to @equipment_room, notice: 'Equipment room was successfully created.' }
        format.json { render action: 'show', status: :created, location: @equipment_room }
      else
        format.html { render action: 'new' }
        format.json { render json: @equipment_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /equipment_rooms/1
  # PATCH/PUT /equipment_rooms/1.json
  def update
    respond_to do |format|
      if @equipment_room.update(equipment_room_params)
        format.html { redirect_to @equipment_room, notice: 'Equipment room was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @equipment_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipment_rooms/1
  # DELETE /equipment_rooms/1.json
  def destroy
    @equipment_room.destroy
    respond_to do |format|
      format.html { redirect_to equipment_rooms_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equipment_room
      @equipment_room = EquipmentRoom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def equipment_room_params
      params[:equipment_room]
    end
end
