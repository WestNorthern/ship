class AddJobIdToBoatJobs < ActiveRecord::Migration[5.1]
  def change
    add_column :boat_jobs, :job_id, :integer
  end
end
