class BoatJobsController < ApplicationController

	def show
		@boats = Boat.all
		@jobs = Job.all
		@bjs = BoatJob.all

	end

	def index
		@new_bj = BoatJob.new
		@boats = Boat.all
		@jobs = Job.all
		@bjs = BoatJob.all
	end


	def create
  	respond_to do |format|
	  	@boat_job = BoatJob.create(boat_job_params)
      @newbj = Job.find_by(id: boat_job_params[:job_id])
	  	job = Job.find(@boat_job.job.id)
	  	boat = Boat.find(@boat_job.boat.id)
	  	boat.update(available: false)
      job_requirement = @boat_job.job.containers
      total_containers = 0
      @boat_job.job.boats.each do |boat|
        count = boat.capacity
        total_containers = count + total_containers
        if total_containers >= job_requirement
          job.update(available: false)
        end
      end
      format.html { redirect_to root_path }
      format.js
  	end

  end

  def destroy
  	respond_to do |format|
      @boat_job = BoatJob.find(params[:id]).destroy
      job = Job.find(@boat_job.job.id)
      boat = Boat.find(@boat_job.boat.id)
      job_requirement = @boat_job.job.containers
      total_containers = 0
      boat.update(available: true)
      @boat_job.job.boats.each do |boat|
        count = boat.capacity
        total_containers = total_containers - count
        if total_containers <= job_requirement
          job.update(available: true)
        end
      end

      format.js 
      format.html { redirect_to root_path }
    end

  end

  private

  def boat_job_params
  	params.require(:boat_job).permit(:boat_id, :job_id)
  end

end
