module Api::V1
  class HomeController < ApiBaseController
    def file_upload  
      document.images.attach(params[:file_upload][:sliders]) 
    end
  end
end