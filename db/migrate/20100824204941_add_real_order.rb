class AddRealOrder < ActiveRecord::Migration
  def self.up
      add_column :pages, :navigation_order, :integer, :default => 1
  end

  def self.down
      remove_column :pages, :navigation_order
  end
end
