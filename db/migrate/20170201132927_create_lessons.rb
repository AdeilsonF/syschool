class CreateLessons < ActiveRecord::Migration[5.0]
  def change
    create_table :lessons do |t|
      t.string :title, null: false, length: 255
      t.integer :book_chapter, default: 0
      t.text :description, length: 255
      t.integer :course_id

      t.timestamps
    end
    add_index :lessons, :course_id
  end
end
