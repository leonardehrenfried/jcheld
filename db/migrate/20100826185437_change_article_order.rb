class ChangeArticleOrder < ActiveRecord::Migration
    def self.up
        add_column :pages, :article0_id, :integer
        add_column :pages, :article1_id, :integer
        add_column :pages, :article2_id, :integer
        remove_column :pages, :articles
        
        add_column :articles, :page_id, :integer
        
        drop_table "pages_articles"
    end

    def self.down
        
    end
end
