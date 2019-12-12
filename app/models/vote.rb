class Vote < ApplicationRecord
    belongs_to :voter, class_name: 'User'
    belongs_to :politician, class_name: 'User'
    # validates_presence_of attribute_names.reject { |attr| attr =~ /id|created_at|updated_at/i }
end
