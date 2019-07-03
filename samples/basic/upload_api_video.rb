require 'rubygems'
require 'bundler/setup'
require 'cloudinary'
require 'cloudinary/uploader'
require 'cloudinary/utils'
require './config'


## Upload a normal video
# Cloudinary::Uploader.upload("media/san_fran_sky.mp4",
#   :resource_type => :video)

## Upload a video with adaptive bitrate streaming
Cloudinary::Uploader.upload("media/san_fran_sky.mp4", :resource_type => :video,
          :eager => [{:streaming_profile => "hd", :format => "m3u8"}],
          :eager_async => true,
          :public_id => "adaptive-test")
