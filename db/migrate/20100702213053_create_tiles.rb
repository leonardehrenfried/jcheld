class CreateTiles < ActiveRecord::Migration
  def self.up
    create_table :tiles do |t|
      t.date :creation_date
      t.date :last_edited
      t.string :title
      t.text :content
      t.images :has_many

      t.timestamps
    end
  end

  def self.down
    drop_table :tiles
  end
end
