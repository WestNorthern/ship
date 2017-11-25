class AddContainersToJobs < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :containers, :integer
  end
end
