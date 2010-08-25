require 'rdiscount'

class Article < ActiveRecord::Base
  belongs_to :image
  has_and_belongs_to_many :pages
  
  def get_content
    markdown = RDiscount.new(content.to_s)
    html = markdown.to_html
    return html
  end
  
  def get_truncated_content(chars=280)
      temp=content[0..chars]+"..."
      #temp=temp.join(" ")
      markdown = RDiscount.new(temp)
      html = markdown.to_html
      return html
  end
end
