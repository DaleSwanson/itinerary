class TypeToHp < ActiveRecord::Migration
  def change
		rename_column :points, :type, :hp
  end
end
