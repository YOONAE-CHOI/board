class CreateRipples < ActiveRecord::Migration
  def change
    create_table :ripples do |t|
      
      t.integer :post_id
      t.string :rippler
      t.string :ripple
      t.string :pwd

      t.timestamps null: false
    end
  end
end
