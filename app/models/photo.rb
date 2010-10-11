class Photo < ActiveRecord::Base
  
  has_attachment :content_type => :image, 
                 :storage => :file_system, 
                 :max_size => 2000.kilobytes,
                 :resize_to => '500x500>',
                 :thumbnails => { :thumb => '215x215>',
                                  :full_width => '500x950'
                                }

  validates_as_attachment

  belongs_to :article
end
