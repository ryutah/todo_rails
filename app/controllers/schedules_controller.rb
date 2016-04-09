class SchedulesController < ApplicationController
  before_action :set_schedule, only: [:show, :edit, :update, :destroy]

  # GET /schedules
  # GET /schedules.json
  def index
    @weeks = params[:weeks] || 0
    between_date = view_context.weeks_term_of @weeks.to_i
    @schedules = Schedule.schedule_between(
      between_date[:start_date], between_date[:end_date]
    )
    @unfinished_schedules = Schedule.unfinised
  end

  # GET /schedules/1
  # GET /schedules/1.json
  def show
  end

  # GET /schedules/new
  def new
    @schedule = Schedule.new
  end

  # GET /schedules/1/edit
  def edit
  end

  # POST /schedules
  # POST /schedules.json
  def create
    @schedule = Schedule.new(schedule_params)

    if @schedule.save
      flash[:notice] = 'スケジュールを登録しました'
      redirect_to @schedule
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /schedules/1
  # PATCH/PUT /schedules/1.json
  def update
    redirect_path = request.referer
    if @schedule.update(schedule_params)
      flash[:notice] = 'スケジュールを更新しました'
      redirect_to redirect_path
    else
      render action: 'edit'
    end
  end

  # DELETE /schedules/1
  # DELETE /schedules/1.json
  def destroy
    @schedule.destroy
    redirect_to schedules_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schedule
      @schedule = Schedule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def schedule_params
      params.require(:schedule).permit(:title, :schedule_date, :description, :finished)
    end
end
