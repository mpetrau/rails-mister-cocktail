# encoding: utf-8

class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  process eager: true  # Force version generation at upload time.

  process convert: 'jpg'

  version :standard do
    cloudinary_transformation width: 800, height: 600, crop: :fill
  end

  version :thumb do
    cloudinary_transformation effect: "brightness:30",
      width: 150, height: 150, crop: :thumb
  end
end
