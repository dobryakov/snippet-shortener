class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.text :title
      t.text :description
      t.text :image_url
      t.text :original_url
      t.string :code

      t.timestamps null: false
    end
  end
end
