class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :photo_url
      t.boolean :has_read

      t.timestamps null: false
    end
  end
end
