class WareHouse < ApplicationRecord
  belongs_to :store
  belongs_to :product
end
