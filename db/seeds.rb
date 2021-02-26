# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Todo;

User.create!({ name: "ben", email: "ben@test.com", password: "password", admin: true })
User.create!({ name: "peter", email: "peter@test.com", password: "password" })
User.create!({ name: "kevin", email: "kevin@test.com", password: "password" })

Plant.create!({scientific_name:"P. erubescens", common_name:"Pink Princess Philodendron",plant_family:"Philodendron", description:"Black-leaf philodendron with hot pink variegation.", light: "High", temperature: "65-85", humidity: "High", water_freq: "Low",soil_type:"Ariod",difficulty_level:"Medium"})
Plant.create!({scientific_name:"scindapsus treubii", common_name:"scindapsus treubii",plant_family:"Scindapsus", description:"These plants have a smooth stem and oval or heart-shaped leaves of green color with hints of silver. This is where the name “Scindapsus Moonlight” comes from.  These leaves can grow as long as 12 to 60 centimeters and are the primary attraction of the plant with their beautiful, satin finish. The leaves grow to their full potential if given strong, rigid support such as a stalk or a bamboo stick.", light: "Medium", temperature: "60-90", humidity: "Medium", water_freq: "Low",soil_type:"Indoor Plant",difficulty_level:"Easy"})
Plant.create!({scientific_name:"", common_name:"",plant_family:"", description:"", light: "", temperature: "", humidity: "", water_freq: "",soil_type:"",difficulty_level:""})
Plant.create!({scientific_name:"", common_name:"",plant_family:"", description:"", light: "", temperature: "", humidity: "", water_freq: "",soil_type:"",difficulty_level:""})
# Plant.create!({scientific_name:"", common_name:"",plant_family:"", description:"", light: "", temperature: "", humidity: "", water_freq: "",soil_type:"",difficulty_level:""})

UserPlant.create!({user_id: ,plant_id: , date_aquired: DateTime.new(2020,2,3)})
UserPlant.create!({user_id: ,plant_id: , date_aquired: DateTime.new(2021,2,3)})
UserPlant.create!({user_id: ,plant_id: , date_aquired: DateTime.new(2021,2,3)})
UserPlant.create!({user_id: ,plant_id: , date_aquired: DateTime.new(2021,2,3)})
UserPlant.create!({user_id: ,plant_id: , date_aquired: DateTime.new(2021,2,3)})
# UserPlant.create!({user_id: ,plant_id: , date_aquired: ,})

Location.create!({name: "",description: ""})

Location_user_plant.create!({user_plant_id: , location_id: , date: DateTime.new(2020,2,3)})



Rating.create!({user_id: , plant_id: , liked: ,})
Rating.create!({user_id: , plant_id: , liked: ,})
Rating.create!({user_id: , plant_id: , liked: ,})
Rating.create!({user_id: , plant_id: , liked: ,})
Rating.create!({user_id: , plant_id: , liked: ,})
# Rating.create!({user_id: , plant_id: , liked: ,})

Picture.create!({plant_id: , user_id: , img_url: "",})
Picture.create!({plant_id: , user_id: , img_url: "",})
Picture.create!({plant_id: , user_id: , img_url: "",})
Picture.create!({plant_id: , user_id: , img_url: "",})
Picture.create!({plant_id: , user_id: , img_url: "",})
# Picture.create!({plant_id: , user_id: , img_url: "",})

