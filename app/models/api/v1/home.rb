module Api::V1
  class Home < ApiBase
    has_many_attached :sliders
  end
end