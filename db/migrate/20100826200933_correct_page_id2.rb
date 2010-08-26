class CorrectPageId2 < ActiveRecord::Migration
  def self.up
      add_column :articles, :view_page_id, :integer
      remove_column :pages, :view_page 
  end

  def self.down
  end
end
