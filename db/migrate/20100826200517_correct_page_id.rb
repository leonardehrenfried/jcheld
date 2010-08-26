class CorrectPageId < ActiveRecord::Migration
  def self.up
      add_column :pages, :view_page, :integer
  end

  def self.down
  end
end
