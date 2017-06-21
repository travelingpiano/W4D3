class Removenullfrompassword < ActiveRecord::Migration
  def change
    remove_column :users,:password
    add_column :users,:password,:text
  end
end
