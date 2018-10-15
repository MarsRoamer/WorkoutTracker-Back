# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Exercise.create([{name: "Bench Press", description: "Move heavy weight", bodypart: "chest"}, 
				{name: "Incline Bench", description: "bench on incline", bodypart: "chest"},
				{name: "Standing Shoulder Press", description: "Stand and press", bodypart: "shoulders"},
				{name: "Lateral Raises", description: "Raise arms to side", bodypart: "shoulders"},
				{name: "Barbell curls", description: "curl up weight", bodypart: "biceps"},
				{name: "Hammer Curls", description: "Hammer curl the weight", bodypart: "biceps"},
				{name: "close grip bench", description: "bench with a close grip", bodypart: "triceps"},
				{name: "dips", description: "dips on parallel bars", bodypart: "triceps"},
				{name: "squat", description: "barbell squat", bodypart: "legs"},
				{name: "deadlift", description: "deadlift with barbell", bodypart: "full body"},
				{name: "pullups", description: "strict pullups", bodypart: "back"},
				])