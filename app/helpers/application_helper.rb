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

    def checkGender gender
        if gender
            return true
        else
            return false
        end
    end

    def format created_at
        return created_at.strftime("%d-%m-%Y")
    end

    def format_day day
        return day.strftime("%d")
    end
    # // 2020-08-01
    def format_calendar_date date
        return date.strftime("%Y-%m-%d")
    end
  
    def format_datetime timer
      if timer.nil?
        return "00:00:0000 0:0"
      else
        return timer.strftime("%d-%m-%Y %H:%M")
      end
    end
  
    def formatsettime string
      return string.strftime(" %H:%M %d-%m-%Y")
    end
  
    def format_month_year date
      return date.strftime("%m/%d")
    end
  
    def number_to_currency_br(number)
      unit =  number_to_currency(number, unit: "VNĐ", separator: "," , delimiter: ".", precision: 0)
      subunit = unit.gsub! 'VNĐ', " "
      return subunit
    end
  
    def get_current_date
       return Time.zone.now.to_date
    end
end
