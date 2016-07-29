class CreateStats < ActiveRecord::Migration[5.0]
  def change
    create_table :stats do |t|
      t.string :rails
      t.string :g
      t.string :scaffold
      t.string :ProductType
      t.string :name

      t.timestamps
    end
  end
end
