class CreateMaintenances < ActiveRecord::Migration[5.2]
  def change
    create_table :maintenances do |t|
      t.date :entrance_date
      t.date :exit_date
      t.bigint :current_km
      t.string :description
      t.float :mo_value
      t.float :parts_value

      t.timestamps
    end
  end
end
