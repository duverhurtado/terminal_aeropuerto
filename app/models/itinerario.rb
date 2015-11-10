class Itinerario < ActiveRecord::Base
  belongs_to :destino
  belongs_to :origen
end
