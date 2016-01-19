class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :name
      t.string :description
      t.string :tags
      t.string :owner
      t.integer :status

      t.timestamps null: false
    end
  end
end
