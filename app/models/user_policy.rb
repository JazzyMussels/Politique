class UserPolicy < ApplicationRecord
    belongs_to :user
    belongs_to :policy 
end
