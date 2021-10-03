class Role < ApplicationRecord
    def isAdmin current_user
        if current_user.role.name == 'admin'
            return true;
        else 
            return false;
        end
    end

    def isUser current_user
        if current_user.role.name == 'user'
            return true;
        else 
            return false;
        end
    end

    def isClient current_user
        if current_user.role.name == 'client'
            return true;
        else 
            return false;
        end
    end


end
