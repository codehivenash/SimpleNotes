class CreateUserNotebooks < ActiveRecord::Migration
  def change
    create_table :user_notebooks do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :notebook, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
