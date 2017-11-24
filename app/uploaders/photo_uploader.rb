class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  process :resize_to_fit => [200, 200]
end
