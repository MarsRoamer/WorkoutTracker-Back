class UserExerciseSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :exercise_id, :reps, :weight, :created_at
end
