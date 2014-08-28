class RoomsController < ApplicationController
  before_action :set_room, only: [:show, :edit, :update, :destroy]
  helper_method :select
  helper_method :check

  # GET /rooms
  # GET /rooms.json
  def index
    @rooms = Room.all
  end

  # GET /rooms/1
  # GET /rooms/1.json
  def show
  end

  # GET /rooms/new
  def new
    @room = Room.new
  end

  # GET /rooms/1/edit
  def edit
   
  end

  # POST /rooms
  # POST /rooms.json
  def create
    @room = Room.new(room_params)
    @route_name = Route.find_by_id(params[:route_name])
    @room.route = @route_name

    @equipment_list = params[:equipment]

    
    for r in @equipment_list
      if r 
         @equipment = Equipment.find_by_id(r);
        @room.equipment << @equipment
      end
    end

    respond_to do |format|
      if @room.save
        format.html { redirect_to @room, notice: 'Room was successfully created.' }
        format.json { render action: 'show', status: :created, location: @room }
      else
        format.html { render action: 'new' }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rooms/1
  # PATCH/PUT /rooms/1.json
  def update
    @route_name = Route.find_by_id(params[:route_name])
    @room.route = @route_name

    @equipment_list = params[:equipment]

    
    for r in @equipment_list
      if r 
         @equipment = Equipment.find_by_id(r);
         unless(@room.equipment.include?(@equipment))
            @room.equipment << @equipment
         end
      end
    end

    respond_to do |format|
      if @room.update(room_params)
        format.html { redirect_to @room, notice: 'Room was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rooms/1
  # DELETE /rooms/1.json
  def destroy
    @room.destroy
    respond_to do |format|
      format.html { redirect_to rooms_url }
      format.json { head :no_content }
    end
  end

  def select
    if(@room.route)
      return @room.route.id
    else
      return 1
    end
  end

  def check(id)
       @echeck = Equipment.find_by_id(id);
      if (@room.equipment.include?(@echeck))
        return true
      else
        return false
      end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room
      @room = Room.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def room_params
      params.require(:room).permit(:name, :building, :roomnumber)
    end
end
