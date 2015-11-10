class Vuelo < ActiveRecord::Base
  belongs_to :aerolinea
  belongs_to :itinerario
  has_many :cliente_vuelo
  has_many :cliente, :through => :cliente_vuelo
end
