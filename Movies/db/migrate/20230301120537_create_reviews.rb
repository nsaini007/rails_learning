class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :reviewer
      t.text :review
      t.references :movie, null: false, foreign_key: true

      t.timestamps
    end
  end
end
