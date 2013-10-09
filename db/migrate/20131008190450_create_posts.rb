class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :description
      t.string :location
      t.string :price
      t.string :phone
      t.timestamps
    end
  end
end
