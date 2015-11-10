class ClienteVuelo < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :vuelo
end
