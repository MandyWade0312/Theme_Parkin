class ParksController < ApplicationController
  before_action :set_park, only: %i[ show edit update destroy ]

  # GET /parks or /parks.json
  def index
    @parks = Park.all
  end

  # GET /parks/1 or /parks/1.json
  def show
    @rides = @park.rides
  end

  # GET /parks/new
  def new
    @park = Park.new
  end

  # GET /parks/1/edit
  def edit
  end

  # POST /parks or /parks.json
  def create
    @park = Park.new(park_params)

    respond_to do |format|
      if @park.save
        format.html { redirect_to @park, notice: "Park was successfully created." }
        format.json { render :show, status: :created, location: @park }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @park.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parks/1 or /parks/1.json
  def update
    respond_to do |format|
      if @park.update(park_params)
        format.html { redirect_to @park, notice: "Park was successfully updated." }
        format.json { render :show, status: :ok, location: @park }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @park.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parks/1 or /parks/1.json
  def destroy
    @park.destroy
    Ride.where(id: @park.rides).delete_all
    respond_to do |format|
      format.html { redirect_to parks_url, notice: "Park was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_park
      @park = Park.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def park_params
      params.require(:park).permit(:name, :state, :history, :year_built, :map, :map_width, :map_height)
    end
end
