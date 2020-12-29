class TrackingsController < ApplicationController
  before_action :set_tracking, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_teacher!, except: [:index, :show]
  before_action :correct_teacher, only: [:edit, :update, :destroy]
  # GET /trackings
  # GET /trackings.json
  def index
    @trackings = Tracking.all
  end

  # GET /trackings/1
  # GET /trackings/1.json
  def show
  end

  # GET /trackings/new
  def new
    @tracking = current_teacher.trackings.build
  end

  # GET /trackings/1/edit
  def edit
  end

  # POST /trackings
  # POST /trackings.json
  def create
    @tracking = current_teacher.trackings.build(tracking_params)

    respond_to do |format|
      if @tracking.save
        format.html { redirect_to @tracking, notice: 'Tracking was successfully created.' }
        format.json { render :show, status: :created, location: @tracking }
      else
        format.html { render :new }
        format.json { render json: @tracking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trackings/1
  # PATCH/PUT /trackings/1.json
  def update
    respond_to do |format|
      if @tracking.update(tracking_params)
        format.html { redirect_to @tracking, notice: 'Tracking was successfully updated.' }
        format.json { render :show, status: :ok, location: @tracking }
      else
        format.html { render :edit }
        format.json { render json: @tracking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trackings/1
  # DELETE /trackings/1.json
  def destroy
    @tracking.destroy
    respond_to do |format|
      format.html { redirect_to trackings_url, notice: 'Tracking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def correct_teacher
    @tracking = current_teacher.trackings.find_by(id: params[:id])
    redirect_to trackings_path, notice: "You're not authorized for this action!" if @tracking.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tracking
      @tracking = Tracking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tracking_params
      params.require(:tracking).permit(:first_name, :last_name, :user_name, :date, :clock_in_out, :clock_time, :teacher_id)
    end
end
