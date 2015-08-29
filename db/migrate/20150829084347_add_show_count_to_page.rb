class AddShowCountToPage < ActiveRecord::Migration
  def change
    add_column :pages, :shows_count, :integer, :default => 0
  end
end
