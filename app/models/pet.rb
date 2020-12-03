class Pet < ApplicationRecord
  has_many :deals
  #permite a utilização do pet.Deals para pegar todos os deals de um pet

end
