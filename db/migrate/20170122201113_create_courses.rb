class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :content
      t.integer :duration
      t.integer :school_id
      t.decimal :price, precision: 7, scale: 2

      t.timestamps
    end
  end
end
