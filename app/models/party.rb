class Party < ApplicationRecord
    has_many :user_parties
    has_many :users, through: :user_parties

    def link_party_to_user(current_user_id)
        @user = User.find(current_user_id)
        UserParty.find_or_create_by(user_id: @user.id, party_id: self.id) 
        @user
    end

    
end
