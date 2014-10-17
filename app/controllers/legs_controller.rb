class LegsController < ApplicationController
  before_action :set_leg, only: [:show, :edit, :update, :destroy]
  before_action :require_login

  # GET /legs
  # GET /legs.json
  def index
    @trip = Trip.find(params[:trip_id])
    @legs = @trip.legs
  end

  # GET /legs/1
  # GET /legs/1.json
  def show
  end

  # GET /legs/new
  def new
    @trip = Trip.find(params[:trip_id])
    @leg = Leg.new
  end

  # GET /legs/1/edit
  def edit
  end

  # POST /legs
  # POST /legs.json
  def create
    @trip = Trip.find(params[:trip_id])
    @leg = @trip.legs.new(leg_params)

    respond_to do |format|
      if @leg.save
        format.html { redirect_to @leg, notice: 'Leg was successfully created.' }
        format.json { render :show, status: :created, location: @leg }
      else
        format.html { render :new }
        format.json { render json: @leg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /legs/1
  # PATCH/PUT /legs/1.json
  def update
    respond_to do |format|
      if @leg.update(leg_params)
        format.html { redirect_to @leg, notice: 'Leg was successfully updated.' }
        format.json { render :show, status: :ok, location: @leg }
      else
        format.html { render :edit }
        format.json { render json: @leg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /legs/1
  # DELETE /legs/1.json
  def destroy
    @trip = @leg.trip
    @leg.destroy
    respond_to do |format|
      format.html { redirect_to trip_legs_path(@trip), notice: 'Leg was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leg
      @leg = Leg.find(params[:id])
    end

    # def set_location ???
      # @location = location.first_or_create
      # @location.id for params
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def leg_params
      params.require(:leg).permit(:location_id, :start_date, :end_date)
    end
end
