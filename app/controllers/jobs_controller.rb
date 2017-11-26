class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]


  def show
  end

  def index
    @jobs = Job.all
    @boats = Boat.all
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
    respond_to do |format|
      if @job.update(job_params)
        format.html { redirect_to @job, notice: 'Job details were successfully updated.' }
        format.json { render :show, status: :ok, location: @job }
      else
        format.html { render :edit }
        format.json { render json: @job.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @job.destroy

    respond_to do |format|
      format.html { redirect_to jobs_url, notice: 'Job was obliterated.' }
      format.json { head :no_content }
    end
  end


  private
  
  def set_job
    @job = Job.find(params[:id])
  end

  
  def job_params
    params.require(:job).permit(:job_name, :job_description, :origin, :destination, :containers, :cost, :avatar)
  end
end
