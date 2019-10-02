class Debate < ApplicationRecord
    has_many :user_debates
    has_many :users, through: :user_debates
    # validates_presence_of attribute_names.reject { |attr| attr =~ /id|created_at|updated_at/i }

end
