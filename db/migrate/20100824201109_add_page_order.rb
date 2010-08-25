class AddPageOrder < ActiveRecord::Migration
  def self.up
      add_column :pages, :in_navigation, :boolean
  end

  def self.down
  end
end
