class CreateVehicleModels < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicle_models do |t|
      t.string :name
      t.string :version limit: 20
      t.string :engine limit: 50
      t.references :vehicle_brands, foreign_key: true

      t.timestamps
    end
  end
end
