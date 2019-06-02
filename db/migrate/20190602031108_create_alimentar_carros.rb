class CreateAlimentarCarros < ActiveRecord::Migration[5.2]
  def change
    create_table :alimentar_carros do |t|

      t.timestamps
    end
  end
end
