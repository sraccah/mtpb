class CreateDays < ActiveRecord::Migration[5.2]
  def change
    create_table :days do |t|
      t.text :title
      t.text :description

      t.timestamps
    end
  end
end
