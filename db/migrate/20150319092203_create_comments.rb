class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment, null: false
      t.references :flipper 

     t.timestamps null: false
    end
  end
end
