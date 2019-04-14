json.array! @itineraries.each do |itinerary|
  json.id itinerary.id
  json.category itinerary.category
  json.name itinerary.name
  json.description itinerary.description
  json.image_url itinerary.image_url
  json.address itinerary.address
  json.country itinerary.country
end