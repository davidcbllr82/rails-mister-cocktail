class ImageUploader < Shrine
  # plugins and uploading logic
  include Unsplash::Connection
  plugin :infer_extension
  plugin :remote_url, max_size: 20.megabytes
end
