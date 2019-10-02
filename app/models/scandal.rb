class Scandal < ApplicationRecord
    has_many :user_scandals
    has_many :users, through: :user_scandals
    # validates_presence_of attribute_names.reject { |attr| attr =~ /id|created_at|updated_at/i }
end
