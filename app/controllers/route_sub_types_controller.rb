class RouteSubTypesController < ApplicationController
  before_action :set_route_sub_type, only: [:show, :edit, :update, :destroy]
  helper_method :select
  helper_method :checkRoute
  helper_method :checkEquipment
  
  
  # GET /route_sub_types
  # GET /route_sub_types.json
  def index
    @route_sub_types = RouteSubType.all

  end

  # GET /route_sub_types/1
  # GET /route_sub_types/1.json
  def show
  end

  # GET /route_sub_types/new
  def new
    @route_sub_type = RouteSubType.new
  end

  # GET /route_sub_types/1/edit
  def edit
  end

  # POST /route_sub_types
  # POST /route_sub_types.json
  def create
    @route_sub_type = RouteSubType.new(route_sub_type_params)
    @route_type = RouteType.find_by_id(params[:route_type])
    #flash.now[:alert] = @route_type
    @route_sub_type.route_type = @route_type

    @routeToDoList = params[:routeThingsToCheck];
    if(@routeToDoList)
      for r in @routeToDoList
        if r 
          @route_things_to_check = RouteThingsToCheck.find_by_id(r);
          @route_sub_type.route_things_to_check << @route_things_to_check; 
        end
      end
    end

    @equipmentToDoList = params[:equipmentThingsToCheck];
    if(@equipmentToDoList)
      for r in @equipmentToDoList
        if r 
          @equipment_things_to_check = EquipmentThingsToCheck.find_by_id(r);
          @route_sub_type.equipment_things_to_check << @equipment_things_to_check; 
        end
      end
    end


    respond_to do |format|
      if @route_sub_type.save
        format.html { redirect_to @route_sub_type, notice: 'Route sub type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @route_sub_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @route_sub_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /route_sub_types/1
  # PATCH/PUT /route_sub_types/1.json
  def update
    @route_type = RouteType.find_by_id(params[:route_type])
    #flash.now[:alert] = @route_type
    @route_sub_type.route_type = @route_type

    @routeToDoList = params[:routeThingsToCheck];
    if(@routeToDoList)
      for r in @routeToDoList
        if r 
          @route_things_to_check = RouteThingsToCheck.find_by_id(r);
          unless(@route_sub_type.route_things_to_check.include?(@route_things_to_check))
            @route_sub_type.route_things_to_check << @route_things_to_check; 
          end
        end
      end
    end

    @equipmentToDoList = params[:equipmentThingsToCheck];
    if(@equipmentToDoList)
      for r in @equipmentToDoList
        if r 
          @equipment_things_to_check = EquipmentThingsToCheck.find_by_id(r);
          @route_sub_type.equipment_things_to_check << @equipment_things_to_check; 
        end
      end
    end
    respond_to do |format|
      if @route_sub_type.update(route_sub_type_params)
        format.html { redirect_to @route_sub_type, notice: 'Route sub type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @route_sub_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /route_sub_types/1
  # DELETE /route_sub_types/1.json
  def destroy
    @route_sub_type.destroy
    respond_to do |format|
      format.html { redirect_to route_sub_types_url }
      format.json { head :no_content }
    end
  end

  def select
    if(@route_sub_type.route_type)
      return @route_sub_type.route_type.id
    else
      return 1
    end
  end

  def checkRoute(id)
       @rcheck = RouteThingsToCheck.find_by_id(id);
      if (@route_sub_type.route_things_to_check.include?(@rcheck))
        return true
      else
        return false
      end
  end

  def checkEquipment(id)
       @echeck = EquipmentThingsToCheck.find_by_id(id);
      if (@route_sub_type.equipment_things_to_check.include?(@echeck))
        return true
      else
        return false
      end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_route_sub_type
      @route_sub_type = RouteSubType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def route_sub_type_params
      params.require(:route_sub_type).permit(:name)
    end
end
