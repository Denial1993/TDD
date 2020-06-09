class Store < ApplicationRecord
	#belongs_to :user
	
	#has_many :ware_houses
	#has_many :products , through: :ware_houses
	has_and_belongs_to_many :products
end
