class DaysController < ApplicationController
  before_action :set_day, only: [:show, :edit, :update, :destroy]

  # GET /days
  # GET /days.json
  def index
    request.GET.each do |key,value|
      @order = value
    end
    if @order == "DESC"
      @days = Day.all.order("created_at DESC")
    else
      @days = Day.all
    end
  end

  # GET /days/1
  # GET /days/1.json
  def show
  end

  # GET /days/new
  def new
    @day = Day.new
  end

  # GET /days/1/edit
  def edit
  end

  # POST /days
  # POST /days.json
  def create
    @day = Day.new(day_params)
    respond_to do |format|
      if @day.save
        flash['success'] = 'Day was successfully created.'
        format.html { redirect_to @day, flash: @flash }
        format.json { render :show, status: :created, location: @day }
      else
        format.html { render :new }
        format.json { render json: @day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /days/1
  # PATCH/PUT /days/1.json
  def update
    # same color as the button for easier dev but success should be green
    respond_to do |format|
      if @day.update(day_params)
        flash['alert'] = 'Day was successfully updated.'
        format.html { redirect_to @day, flash: @flash }
        format.json { render :show, status: :ok, location: @day }
      else
        format.html { render :edit }
        format.json { render json: @day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /days/1
  # DELETE /days/1.json
  def destroy
    @day.destroy
    respond_to do |format|
      flash['error'] = 'Day was successfully deleted.'
      format.html { redirect_to days_url, flash: @flash }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_day
      @day = Day.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def day_params
      params.require(:day).permit(:title, :description)
    end
end
