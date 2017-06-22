class Addcatphoto < ActiveRecord::Migration
  def change
    add_column :cats, :photo, :text
  end
end
