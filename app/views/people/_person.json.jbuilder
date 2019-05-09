json.extract! person, :id, :kind, :name, :company_name, :ie, :cnpj, :rg, :cpf, :tel1, :tel2, :email, :address, :address_number, :address_complement, :address_bairro, :address_zip, :status, :cities_id, :created_at, :updated_at
json.url person_url(person, format: :json)
