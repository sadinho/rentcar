class Aluguel < ApplicationRecord
has_one :carro
has_one :cliente
has_one  :sinistro
end
