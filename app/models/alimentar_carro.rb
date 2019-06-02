class AlimentarCarro < ApplicationRecord
require 'csv'
require 'activerecord-import/base'

def self.my_import(file)
	carros=[]
	CSV.foreach(file.path, headers: true) do |row|
		carros << Carro.new(row.to_h)
	end
		Carro.import carros, recursive: true
	end
end
