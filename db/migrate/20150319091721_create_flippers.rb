class CreateFlippers < ActiveRecord::Migration
  def change
    create_table :flippers do |t|
      t.string :name, null: false, limit: 225
      t.integer :age, null: false, default: 18
      t.text :quirk

      t.timestamps null: false
    end

  end
end
