class AddShortNameToPoints < ActiveRecord::Migration
  def change
    add_column :points, :short_name, :string
  end
end
