def build_array(a, b, c)
	built_array = [a, b, c]
	p built_array
end

build_array("cats", 10, true)
build_array(nil, "dogs", 3)

def add_to_array(existing_array, x)
	existing_array << x
	p existing_array
end

travel_destinations = []
p travel_destinations

travel_destinations << "Italy"
p travel_destinations

travel_destinations.push("Thailand", "Tokyo", "Morocco", "Greece")
p travel_destinations

travel_destinations.delete_at(2)
p travel_destinations

travel_destinations.insert(2, "New Zealand")
p travel_destinations

travel_destinations.shift
p travel_destinations

includes_Morocco = travel_destinations.include?("Morocco")
puts "Includes Morocco? #{includes_Morocco}"

packing_list = ["toothbrush", "passport"]
p packing_list

trip_planning = travel_destinations + packing_list
p trip_planning

add_to_array(travel_destinations, "France")
add_to_array(packing_list, "underwear")
add_to_array(trip_planning, "itinerary")