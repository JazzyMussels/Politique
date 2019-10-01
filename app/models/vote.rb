class Vote < ApplicationRecord
    belongs_to :voter, class_name: 'User'
    belongs_to :politician, class_name: 'User'
end
