class VoteLog < ApplicationRecord
  belongs_to :superbike,counter_cache: true
end
