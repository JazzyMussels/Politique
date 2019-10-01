class Scandal < ApplicationRecord
    has_many :user_scandals
    has_many :users, through: :user_scandals

    def link_scandal_to_user(current_user_id)
        @user = User.find(current_user_id)
        UserScandal.find_or_create_by(user_id: @user.id, scandal_id: self.id) 
        @user
    end
end
