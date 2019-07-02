require 'rubygems'
require 'bundler/setup'
require 'cloudinary'
require 'cloudinary/uploader'
require 'cloudinary/utils'
require './config'

Cloudinary::Uploader.upload "media/botero.jpg"
