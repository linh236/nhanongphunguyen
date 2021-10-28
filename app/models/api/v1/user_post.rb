module Api::V1
  class UserPost < ApiBase 
    belongs_to :post
    belongs_to :user
  end
end