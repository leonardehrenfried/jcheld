require 'rdiscount'

class Article < ActiveRecord::Base
  belongs_to :image
  has_and_belongs_to_many :pages
  belongs_to :pages, :class_name=>"Page", :foreign_key=>"view_page_id"
  
  def get_content
    markdown = RDiscount.new(content.to_s)
    html = markdown.to_html
    return html
  end
  
  def get_truncated_content(chars=280)
    if content.length > chars
        temp=content[0..chars]+"..."
    else
        temp=content
    end
    #temp=temp.join(" ")
    markdown = RDiscount.new(temp)
    html = markdown.to_html
    return html
  end
  
  def get_view_page
      return Page.find(page_id)
  end
end
