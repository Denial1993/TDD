class User < ApplicationRecord
	has_one :store

	scope :adult_femail_live_in_taipei, -> {where(gender: 0 ,city: "Taipei").where("age >= 18")}
end
