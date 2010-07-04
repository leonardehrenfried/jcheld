class Article < ActiveRecord::Base
  belongs_to :image
  has_and_belongs_to_many :pages
end
