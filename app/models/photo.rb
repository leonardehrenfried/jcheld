class Photo < ActiveRecord::Base
  
  has_attachment :content_type => :image, 
                 :storage => :file_system, 
                 :max_size => 3000.kilobytes,
                 :resize_to => '3000x3000>',
                 :thumbnails => { :thumb => '215x215>',
                                  :square_thumb => 'c200x200',
                                  :page_width => '900x900',
                                }

  validates_as_attachment

  belongs_to :article

end
