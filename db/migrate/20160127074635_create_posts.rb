class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      
      t.string :title
      t.string :article
      t.string :pwd
      t.string :writer

      t.timestamps null: false
    end
  end
end
