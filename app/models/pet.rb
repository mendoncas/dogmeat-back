class Pet < ApplicationRecord
  has_many :deals, dependent: :destroy
  #destrói todos os registros que dependem dessa chave
  #permite a utilização do pet.Deals para pegar todos os deals de um pet
end
