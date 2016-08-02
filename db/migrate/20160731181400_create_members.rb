class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :name
      t.string :division
      t.integer :ship_id

      t.timestamps
    end
  end
end
