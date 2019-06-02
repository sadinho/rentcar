class Carro < ApplicationRecord
has_one :aluguel

    # Bulk upload companies
    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
            company_hash = Carro.new
            company_hash.marca = row[0]
            company_hash.tipo = row[1]
			company_hash.disponivel = row[2]
			company_hash.created_at = row[3]
			company_hash.updated_at = row[4]
			 
            company_hash.save
        end
    end
end

