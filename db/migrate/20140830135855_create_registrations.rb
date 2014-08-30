class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :email

      t.timestamps null: false
    end
  end
end
