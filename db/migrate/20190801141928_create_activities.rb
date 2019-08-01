class CreateActivities < ActiveRecord::Migration[5.2]
  def change
    create_table :activities do |t|
      t.string :name  
      t.string :duration
      t.date :date_completed
      t.text :notes 
      t.integer :points

      t.belongs_to :user, class_name: "user", foreign_key: "user_id"

      t.timestamps
    end
  end
end
