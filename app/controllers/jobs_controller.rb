class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]


  def show
  end

  def index
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.create( job_params )
    @job.user_id = current_user.id

    respond_to do |format|
      if @job.save
        format.html { redirect_to @job, notice: 'Job was successfully posted.' }
        format.json { render :show, status: :created, location: @job }
      else
        format.html { render :new }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end


  private
  
  def set_job
    @job = Job.find(params[:id])
  end

  
  def job_params
    params.require(:job).permit(:job_name, :job_description, :origin, :destination, :containers, :cost, :avatar)
  end
end
