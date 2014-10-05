class CreateGemReviews < ActiveRecord::Migration
  def change
    create_table :gem_reviews do |t|
      t.string :gem_github
      t.string :gem_version
      t.integer :concept_score
      t.text :concept_details
      t.integer :integration_score
      t.text :integration_details
      t.integer :maintenance_score
      t.text :maintenance_details
      t.integer :support_score
      t.text :support_details
      t.integer :learning_score
      t.text :learning_details

      t.timestamps null: false
    end
  end
end
