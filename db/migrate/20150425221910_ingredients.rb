class Ingredients < ActiveRecord::Migration
  def change
     create_table :ingredients do |t|
      t.string :name
      t.boolean :necessary, default: false 
      t.timestamps null: false
    end
  end
end
