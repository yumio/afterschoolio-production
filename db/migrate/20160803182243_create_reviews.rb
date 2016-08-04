class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :review_author
      t.string :review_content
      t.references :org

      t.timestamps
    end
  end
end
