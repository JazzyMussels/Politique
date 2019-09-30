class Scandal < ApplicationRecord
    has_many :user_scandals
    has_many :users, through: :user_scandals
end
