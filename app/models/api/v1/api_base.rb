module Api::V1
  class ApiBase < ActiveRecord::Base
    self.abstract_class = true
  end
end