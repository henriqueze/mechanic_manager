class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :kind, limit: 10
      t.string :name, limit: 100
      t.string :company_name, limit: 100
      t.bigint :ie, limit: 12
      t.bigint :cnpj, limit: 13
      t.bigint :rg, limit: 12
      t.bigint :cpf, limit: 12
      t.bigint :tel1
      t.bigint :tel2
      t.string :email, limit: 100
      t.string :address, limit: 100
      t.string :address_number, limit: 50
      t.string :address_complement, limit: 100
      t.string :address_bairro
      t.bigint :address_zip
      t.string :status, limit: 7, default: "Ativo"
      t.references :cities, foreign_key: true

      t.timestamps
    end
  end
end
