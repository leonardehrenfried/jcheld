class Page < ActiveRecord::Base
    belongs_to :header
    
    has_and_belongs_to_many :secondary_articles,
        :class_name => "Article", 
        :join_table => "pages_secondary_articles", 
        :foreign_key => "page_id", 
        :association_foreign_key => "article_id"
    belongs_to :layout
    
    belongs_to :articles, :class_name => "Article", :foreign_key=>"article0_id"
    belongs_to :articles, :class_name => "Article", :foreign_key=>"article1_id"
    belongs_to :articles, :class_name => "Article", :foreign_key=>"article2_id"
    
    def self.get_all
        Page.find(:all, :conditions => ['in_navigation = ?', true], :order => "navigation_order ASC")
    end
    
    def get_articles
        return [Article.find(article0_id), Article.find(article1_id), Article.find(article2_id)]
    end
end