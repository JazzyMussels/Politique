class UserScandal < ApplicationRecord
    belongs_to :user
    belongs_to :scandal 
end
