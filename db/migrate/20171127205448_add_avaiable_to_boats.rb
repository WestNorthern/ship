class AddAvaiableToBoats < ActiveRecord::Migration[5.1]
  def change
    add_column :boats, :available, :boolean
  end
end
