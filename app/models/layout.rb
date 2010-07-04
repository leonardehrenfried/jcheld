require "filename.rb"
class Layout < ActiveRecord::Base
    include Filename
    has_many :pages
end
