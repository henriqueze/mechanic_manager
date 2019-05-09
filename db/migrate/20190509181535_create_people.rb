class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :kind
      t.string :name
      t.string :company_name
      t.bigint :ie
      t.bigint :cnpj
      t.bigint :rg
      t.bigint :cpf
      t.bigint :tel1
      t.bigint :tel2
      t.string :email
      t.string :address
      t.string :address_number
      t.string :address_complement
      t.string :address_bairro
      t.bigint :address_zip
      t.string :status
      t.references :cities, foreign_key: true

      t.timestamps
    end
  end
end
