class CreateBoats < ActiveRecord::Migration[5.1]
  def change
    create_table :boats do |t|
    	t.references :user
    	t.string :name, uniqueness: true
    	t.string :home_port
    	t.string :location
    	t.integer :capacity



      t.timestamps
    end
  end
end
