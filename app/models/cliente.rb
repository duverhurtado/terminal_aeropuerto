class Cliente < ActiveRecord::Base
  has_many :cliente_vuelo
  has_many :vuelo, :through => :cliente_vuelo 

end
