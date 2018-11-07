class CreateUserExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :user_exercises do |t|
      t.belongs_to :user, index: true
      t.belongs_to :exercise, index: true
      t.integer :reps
      t.integer :weight
    	
      t.timestamps
    end
  end
end
