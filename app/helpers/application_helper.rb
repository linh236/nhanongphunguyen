module ApplicationHelper
    def isAdmin current_user
        if user_signed_in? && current_user.role.isAdmin(current_user)
            return true
        else 
            return false
        end
    end

    def isUser current_user
        if user_signed_in? && current_user.role.isUser(current_user)
            return true
        else 
            return false
        end
    end
    
    def isClient current_user
        if user_signed_in? && current_user.role.isClient(current_user)
            return true
        else 
            return false
        end
    end

    def getFullNameOrEmail current_user
        if user_signed_in? 
            return current_user&.email || current_user&.full_name
        end
    end

    def getPostionUser current_user
        if user_signed_in?
            return current_user.role&.name
        end
    end

    def file_type(filename)
        types = {
          :jpeg => "image",
          :jpg => "image",
          :gif => "image",
          :png => "image",
          :mp4 => "video", 
          :mkv => "video"
        }
        types[filename.split(".").last.to_sym]
     end
end
