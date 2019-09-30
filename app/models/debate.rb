class Debate < ApplicationRecord
    has_many :user_debates
    has_many :users, through: :user_debates
end
