class RouteTypesController < ApplicationController
  before_action :set_route_type, only: [:show, :edit, :update, :destroy]
  helper_method :select
  # GET /route_types
  # GET /route_types.json
  def index
    @route_types = RouteType.all
  end

  # GET /route_types/1
  # GET /route_types/1.json
  def show
  end

  # GET /route_types/new
  def new
    @route_type = RouteType.new
  end

  # GET /route_types/1/edit
  def edit
  end

  # POST /route_types
  # POST /route_types.json
  def create
    @route_type = RouteType.new(route_type_params)

    respond_to do |format|
      if @route_type.save
        format.html { redirect_to @route_type, notice: 'Route type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @route_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @route_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /route_types/1
  # PATCH/PUT /route_types/1.json
  def update
    respond_to do |format|
      if @route_type.update(route_type_params)
        format.html { redirect_to @route_type, notice: 'Route type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @route_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /route_types/1
  # DELETE /route_types/1.json
  def destroy
    @route_type.destroy
    respond_to do |format|
      format.html { redirect_to route_types_url }
      format.json { head :no_content }
    end
  end

  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_route_type
      @route_type = RouteType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def route_type_params
      params.require(:route_type).permit(:name)
    end
end
