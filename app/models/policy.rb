class Policy < ApplicationRecord
    has_many :user_policies
    has_many :users, through: :user_policies

    def link_policy_to_user(current_user_id)
        @user = User.find(current_user_id)
        
        UserPolicy.find_or_create_by(user_id: @user.id, policy_id: self.id) 
        @user
    end

end
