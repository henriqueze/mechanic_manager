class CreateStates < ActiveRecord::Migration[5.2]
  def change
    create_table :states do |t|
      t.string :name limit: 50
      t.string :uf limit: 2, null: false

      t.timestamps
    end
  end
end
