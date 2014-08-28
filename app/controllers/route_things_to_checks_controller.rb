class RouteThingsToChecksController < ApplicationController
  before_action :set_route_things_to_check, only: [:show, :edit, :update, :destroy]

  
  # GET /route_things_to_checks
  # GET /route_things_to_checks.json
  def index
    @route_things_to_checks = RouteThingsToCheck.all
  end

  # GET /route_things_to_checks/1
  # GET /route_things_to_checks/1.json
  def show
  end

  # GET /route_things_to_checks/new
  def new
    @route_things_to_check = RouteThingsToCheck.new
  end

  # GET /route_things_to_checks/1/edit
  def edit
  end

  # POST /route_things_to_checks
  # POST /route_things_to_checks.json
  def create
    @route_things_to_check = RouteThingsToCheck.new(route_things_to_check_params)

    respond_to do |format|
      if @route_things_to_check.save
        format.html { redirect_to @route_things_to_check, notice: 'Route things to check was successfully created.' }
        format.json { render action: 'show', status: :created, location: @route_things_to_check }
      else
        format.html { render action: 'new' }
        format.json { render json: @route_things_to_check.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /route_things_to_checks/1
  # PATCH/PUT /route_things_to_checks/1.json
  def update
    respond_to do |format|
      if @route_things_to_check.update(route_things_to_check_params)
        format.html { redirect_to @route_things_to_check, notice: 'Route things to check was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @route_things_to_check.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /route_things_to_checks/1
  # DELETE /route_things_to_checks/1.json
  def destroy
    @route_things_to_check.destroy
    respond_to do |format|
      format.html { redirect_to route_things_to_checks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_route_things_to_check
      @route_things_to_check = RouteThingsToCheck.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def route_things_to_check_params
      params.require(:route_things_to_check).permit(:name)
    end
end
