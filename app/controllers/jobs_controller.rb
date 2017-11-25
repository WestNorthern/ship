class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]


  def show
  end

  def index
  end

  def new
  end

  def create
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
