# This file contains all the record creation needed to seed the database with its default values.
require 'open-uri'

(1..6).each { |page|
    puts "Downloading page #{page} ..."
    response = JSON.load(URI.open("https://swapi.dev/api/planets/?page=#{page}"))
    response["results"].each do |planet|
        Planet.create!({
            "name": planet["name"],
            "rotation_period": planet["rotation_period"],
            "diameter": planet["diameter"],
            "climate": planet["climate"],
            "gravity": planet["gravity"],
            "terrain": planet["terrain"],
            "surface_water": planet["surface_water"],
            "population": planet["population"]
        })
    end
}

