class CreateMaintenances < ActiveRecord::Migration[5.2]
  def change
    create_table :maintenances do |t|
      t.date :entrance_date
      t.date :exit_date
      t.bigint :current_km, precision: 9, scale: 2
      t.string :description, limit: 200
      t.float :mo_value, precision: 8, scale: 2
      t.float :parts_value, precision: 8, scale: 2

      t.timestamps
    end
  end
end
