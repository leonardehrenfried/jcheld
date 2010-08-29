class AddFKtoPhotos < ActiveRecord::Migration
  def self.up
      add_column :photos, :article_id, :integer
  end

  def self.down
  end
end
