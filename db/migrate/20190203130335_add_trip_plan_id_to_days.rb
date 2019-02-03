class AddTripPlanIdToDays < ActiveRecord::Migration[5.2]
  def change
    add_column :trip_plans, :days_id, :integer, array: true, default: []
  end
end
