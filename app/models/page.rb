class Page < ActiveRecord::Base
    belongs_to :header
    has_and_belongs_to_many :articles,
        :class_name => "Article", 
        :join_table => "pages_articles", 
        :foreign_key => "page_id", 
        :association_foreign_key => "article_id"
    belongs_to :layout
end