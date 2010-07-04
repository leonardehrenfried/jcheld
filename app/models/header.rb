require "filename.rb"

class Header < ActiveRecord::Base
    include Filename
    
    has_many :pages
end
