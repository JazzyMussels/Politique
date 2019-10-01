class UserScandal < ApplicationRecord
    belongs_to :user
    belongs_to :scandal 

    belongs_to :giver, class_name: 'User'
end
