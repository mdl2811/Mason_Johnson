class CreateTestimonials < ActiveRecord::Migration[5.1]
  def change
    create_table :testimonials do |t|
      t.string :body, null: false
      t.string :title, null: false
      t.string :name, null: false
      t.string :location, null: false
      t.float :rating
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
