class Photo < ActiveRecord::Base
  
  has_attachment :content_type => :image, 
                 :storage => :file_system, 
                 :max_size => 2000.kilobytes,
                 :resize_to => '950x950>',
                 :thumbnails => { :thumb => '215x215>',
                                  :square_thumb => 'c200x200',
                                }

  validates_as_attachment

  belongs_to :article

end
