class Pasaje < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :vuelo
  belongs_to :clase
end
