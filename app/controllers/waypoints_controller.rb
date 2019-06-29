class WaypointsController < ApplicationController
  before_action :set_waypoint, only: [:show, :edit, :update, :destroy]
  skip_before_filter :verify_authenticity_token

  # GET /waypoints
  # GET /waypoints.json
  def index
    @waypoints = Waypoint.all
    @vehicles = Vehicle.all
  end

  # GET /waypoints/1
  # GET /waypoints/1.json
  def show
  end

  def search_vehicle
    #@waypoint = Waypoint.all
    #@waypoints = Waypoint.where("vehicle_id = ?", params[:vehicle_id])
    @waypoints = Waypoint.find(params[:vehicle_id])
    @vehicles = Vehicle.all
  end

  # GET /waypoints/new
  def new
    @waypoint = Waypoint.new
    @vehicles = Vehicle.all

    respond_to do |format|
      format.html # new.html.erb 
      format.xml { render :xml => @waypoint } 
    end
  end

  # GET /waypoints/1/edit
  def edit
    @waypoint = Waypoint.find(params[:id])
    @vehicles = Vehicle.all
  end

  # POST /waypoints
  # POST /waypoints.json
  def create
    @waypoint = Waypoint.new(waypoint_params)

    respond_to do |format|
      if @waypoint.save
        format.html { redirect_to @waypoint, notice: 'Waypoint was successfully created.' }
        format.json { render :show, status: :created, location: @waypoint }
      else
        format.html { render :new }
        format.json { render json: @waypoint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /waypoints/1
  # PATCH/PUT /waypoints/1.json
  def update
    respond_to do |format|
      if @waypoint.update(waypoint_params)
        format.html { redirect_to @waypoint, notice: 'Waypoint was successfully updated.' }
        format.json { render :show, status: :ok, location: @waypoint }
      else
        format.html { render :edit }
        format.json { render json: @waypoint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /waypoints/1
  # DELETE /waypoints/1.json
  def destroy
    @waypoint.destroy
    respond_to do |format|
      format.html { redirect_to waypoints_url, notice: 'Waypoint was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_waypoint
      @waypoint = Waypoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def waypoint_params
      params.require(:waypoint).permit(:latitude, :longitude, :sent_at, :vehicle_id)
    end
end
