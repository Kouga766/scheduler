class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      
      # FK
      t.references :users, foreign_key: true
      
      # columns
      t.string  :title,        :null => false
      t.string  :detail
      t.integer  :priority,        :null => false
      t.date :deadline,       :null => false
      t.datetime :created_at
      t.datetime :updated_at
      
      t.timestamps
      
    end
  end
end
