require 'rubygems'
require 'bundler/setup'
require 'cloudinary'
require 'cloudinary/uploader'
require 'cloudinary/utils'
require './config'

Cloudinary::Uploader.upload("media/san_fran_sky.mp4",
  :resource_type => :video)
