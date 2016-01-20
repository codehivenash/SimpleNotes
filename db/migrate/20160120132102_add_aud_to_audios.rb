class AddAudToAudios < ActiveRecord::Migration
  def change
    add_column :audios, :aud, :string
  end
end
