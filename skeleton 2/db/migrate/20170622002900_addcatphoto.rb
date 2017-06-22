class Addcatphoto < ActiveRecord::Migration
  def change
    add_column :cats, :photo, :text, null: false
  end
end
