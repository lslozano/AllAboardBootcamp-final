class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :image_url
      t.string :is_private
      t.string :review
      t.integer :user_id
    end
  end
end
