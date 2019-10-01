class UserDebate < ApplicationRecord
    belongs_to :user
    belongs_to :debate 
end
