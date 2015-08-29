class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.belongs_to :page, index: true, foreign_key: true
      t.string :ip
      t.text :referrer

      t.timestamps null: false
    end
  end
end
