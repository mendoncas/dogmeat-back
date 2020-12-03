class Deal < ApplicationRecord
  belongs_to :pet
  #permite a utilização do deal.pet prasaber a qual pet pertemce esse deal
end
