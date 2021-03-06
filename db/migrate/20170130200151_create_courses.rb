class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.decimal :price
      t.text :description
      t.integer :school_id
      t.integer :duration

      t.timestamps
    end
  end
end
