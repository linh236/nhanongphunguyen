class UserSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  attributes :full_name, :email, :birth, :gender, :address, :avata_url

  def avata_url
    rails_blob_path(object.avata , only_path: true) if object.avata.attached?
  end
end
