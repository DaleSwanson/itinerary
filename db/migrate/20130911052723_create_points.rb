class CreatePoints < ActiveRecord::Migration
  def change
    create_table :points do |t|
      t.string :name
      t.string :state
      t.integer :hike
      t.float :lat
      t.float :long
      t.integer :height
      t.integer :type

      t.timestamps
    end
  end
end
