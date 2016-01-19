class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :name
      t.string :description
      t.string :link
      t.string :tags

      t.timestamps null: false
    end
  end
end
