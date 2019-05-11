class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :name, limit: 50
      t.references :states, foreign_key: true

      t.timestamps
    end
  end
end
