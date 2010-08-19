class AddSecondaryPost < ActiveRecord::Migration
  def self.up
    create_table "pages_secondary_articles", :force => true, :id => false do |t|
        t.column "page_id", :integer
        t.column "article_id", :integer
    end
  end

  def self.down
  end
end
