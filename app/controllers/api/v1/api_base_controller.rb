module Api::V1
  class ApiBaseController <  ActionController::Base
    skip_before_action :verify_authenticity_token
    # Generic API stuff here
  end
end