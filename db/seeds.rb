# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Park.create([
    {name: "Magic Kingdom", state: "Florida", history: "After Walt's death, Walt Disney Productions began construction on Magic Kingdom and the entire resort in 1967. The park was built as a larger, improved version of Disneyland Park in California. Magic Kingdom was built over a series of tunnels called utilidors, a portmanteau of utility and corridor, allowing employees (called cast members) or VIP guests to move through the park out of sight.", year_built: 1971},
    {name: "EPCOT", state: "Florida", history: "Although Walt Disney had been highly involved in planning EPCOT, he died before he could see the vision through.", year_built: 1982},
    {name: "Disney's Animal Kingdom", state: "Florida", history: "The park is dedicated and themed entirely around the natural environment and animal conservation, a philosophy once pioneered by Walt Disney himself.", year_built: 1998},
    {name: "Disney's Hollywood Studios", state: "Florida", history: "The park is dedicated to the imagined worlds from film, television, music, and theatre, drawing inspiration from the Golden Age of Hollywood.", year_built: 1989},
    {name: "Universal Studios Florida", state: "Florida", history: "Universal contemplated the idea of opening an amusement park in Florida to compete with Disney. They considered building a larger, more immersive version of their Studio Tour tram ride located in Hollywood, retaining the studio backlot tour theme to set it apart from what Disney was offering at Disney World.", year_built: 1990},
    {name: "Universal Studios Islands of Adventure", state: "Florida", history: "Guests embark on an adventure to visit a variety of themed islands.", year_built: 1999}
 ])
 
 Ride.create([
    {name: "Space Mountain", description: "An outer space-themed, indoor roller coaster.", type_of_ride: "Coaster", latitude: 28.4188, longitude: 81.5783, park: Park.find_by_name("Magic Kingdom")},
    {name: "Haunted Mansion", description: "Riders go through a haunted mansion resided in by '999 happy haunts.'", type_of_ride: "Dark Ride", latitude: 28.4206, longitude: 81.5831, park: Park.find_by_name("Magic Kingdom")},
    {name: "Journey Into Imagination With Figment", description: "A ride that encourages guests to use their senses and their imagination.", type_of_ride: "Dark Ride", latitude: 28.3729, longitude: 81.5513, park: Park.find_by_name("EPCOT")},
    {name: "Living with the Land", description: "Depicts human interaction with the Earth, focusing on agriculture, ecology, and travel.", type_of_ride: "Boat Ride", latitude: 28.3743, longitude: 81.5525, park: Park.find_by_name("EPCOT")},
    {name: "Expedition Everest", description: "A steel roller coaster ride through the Forbidden Mountain of the Himalayas where passengers encounter a Yeti.", type_of_ride: "Coaster", latitude: 28.3587, longitude: 81.5871, park: Park.find_by_name("Disney's Animal Kingdom")},
    {name: "Avatar - Flight Of Passage", description: "A 3D flying simulator that allows guests to fly on a banshee across the Pandoran landscape.", type_of_ride: "Dark Ride", latitude: 28.3553, longitude: 81.5926, park: Park.find_by_name("Disney's Animal Kingdom")},
    {name: "The Twilight Zone Tower of Terror", description: "A thrill ride based on Rod Serling's The Twilight Zone.", type_of_ride: "Drop Ride", latitude: 28.3601, longitude: 81.5599, park: Park.find_by_name("Disney's Hollywood Studios")},
    {name: "Star Wars: Rise of the Resistance", description: "A dark ride that places guests in a climactic battle between the First Order and the Resistance.", type_of_ride: "Dark Ride", latitude: 28.3548, longitude: 81.5605, park: Park.find_by_name("Disney's Hollywood Studios")},
    {name: "Harry Potter and the Escape from Gringotts", description: "A dark indoor steel roller coaster featuring Harry Potter and his friends.", type_of_ride: "Dark Ride", latitude: 28.4798, longitude: 81.4700, park: Park.find_by_name("Universal Studios Florida")},
    {name: "Hollywood Rip Ride Rockit", description: "A steel music-themed roller coaster, featuring a loop and several helixes.", type_of_ride: "Coaster", latitude: 28.4753, longitude: 81.4685, park: Park.find_by_name("Universal Studios Florida")},
    {name: "The Amazing Adventure of Spider Man", description: "A 3D dark ride based on Marvel Comics Spider-Man.", type_of_ride: "Dark Ride", latitude: 28.474386, longitude: -81.468193, park: Park.find_by_name("Universal Studios Islands of Adventure")},
    {name: "The Incredible Hulk", description: "A launched roller coaster based on the Hulk comics.", type_of_ride: "Coaster", latitude: 28.4715, longitude: 81.4687, park: Park.find_by_name("Universal Studios Islands of Adventure")}
])

Review.create ([
    {summary: "Scary AF", body: "Don't lift your hands up unless you want to lose them!", stars: 4, ride: Ride.find_by_name("Space Mountain")},
    {summary: "Meh", body: "Kids first roller coaster.", stars: 2, ride: Ride.find_by_name("Space Mountain")},
])
