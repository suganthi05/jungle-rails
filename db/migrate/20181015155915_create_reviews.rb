class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :product_id
      t.string :user_id
      t.string :description
      t.string :rating
    
      t.timestamps :created_at, null: false
      t.timestamps :updated_at, null: false
    end
  end
end
