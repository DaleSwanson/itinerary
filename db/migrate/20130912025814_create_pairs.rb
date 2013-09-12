class CreatePairs < ActiveRecord::Migration
  def change
    create_table :pairs do |t|
      t.integer :from_id
      t.integer :to_id
      t.integer :time
      t.integer :distance

      t.timestamps
    end
  end
end
