class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
    	t.references :user
    	t.string :job_name
    	t.string :job_description
    	t.string :origin
    	t.string :destination
    	t.integer :cost


      t.timestamps
    end
  end
end
