class AlimentarCarroController < ApplicationController
  def index
  @carros = Carro.all
  end

  def import
   Carro.my_import(params[:file])
   redirect_to root_url, notice: "Importação feita com sucesso!"
  end
end
