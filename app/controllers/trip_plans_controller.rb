class TripPlansController < ApplicationController
  before_action :set_trip_plan, only: [:show, :edit, :update, :destroy]

  # GET /trip_plans
  # GET /trip_plans.json
  def index
    @trip_plans = TripPlan.all
  end

  # GET /trip_plans/1
  # GET /trip_plans/1.json
  def show
  end

  # GET /trip_plans/new
  def new
    @trip_plan = TripPlan.new
  end

  # GET /trip_plans/1/edit
  def edit
  end

  # POST /trip_plans
  # POST /trip_plans.json
  def create
    @trip_plan = TripPlan.new(trip_plan_params)

    flash['success'] = 'Trip was successfully created.'
    respond_to do |format|
      if @trip_plan.save
        format.html { redirect_to @trip_plan, flash: @flash }
        format.json { render :show, status: :created, location: @trip_plan }
      else
        format.html { render :new }
        format.json { render json: @trip_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trip_plans/1
  # PATCH/PUT /trip_plans/1.json
  def update
    flash['alert'] = 'Trip was successfully updated.'
    respond_to do |format|
      if @trip_plan.update(trip_plan_params)
        format.html { redirect_to @trip_plan, flash: @flash }
        format.json { render :show, status: :ok, location: @trip_plan }
      else
        format.html { render :edit }
        format.json { render json: @trip_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trip_plans/1
  # DELETE /trip_plans/1.json
  def destroy
    @trip_plan.destroy
    flash['error'] = 'Trip was successfully deleted.'
    respond_to do |format|
      format.html { redirect_to trip_plans_url, flash: @flash }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip_plan
      @trip_plan = TripPlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trip_plan_params
      params.require(:trip_plan).permit(:title, :summary)
    end
end
