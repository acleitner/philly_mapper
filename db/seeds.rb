def self.get_geojson(file_name)
  file_path = Rails.root.join('lib', 'geojson', file_name)
  data = File.read(file_path)
  json_string = JSON.parse(data)
  RGeo::GeoJSON.decode(json_string, :json_parser => :json)
end

def self.import_park_districts
  districts = get_geojson('PPR_Districts.geojson')
  districts.each do |d|
    ParkDistrict.create(
      id: d.feature_id,
      boundary: d.geometry
    )
  end
end

def self.import_parks
  parks = get_geojson('PPR_Boundaries.geojson')
  parks.each do |park|
    Park.create(
      id: park.feature_id,
      name: park.properties["NAME"],
      address: park.properties["ADDRESS"],
      zipcode: park.properties["ZIPCODE"],
      acres: park.properties["ACRES"],
      park_district_id: park.properties["DISTRICT"],
      boundary: park.geometry
    )
  end
end

def self.import_park_entrances
  entrances = get_geojson('Park_Entrances_point.geojson')
  entrances.each do |e|
    ParkEntrance.create(
      id: e.feature_id,
      access_type: e.properties["TYPE"],
      park: Park.find_by(name: e.properties["LOCATION"]),
      features: e.properties["ENTRANCE_T"],
      address: e.properties["ADDRESS"],
      primary: e.properties["TYPE_2"] == "Primary",
      coordinates: e.geometry
    )
  end
end

def self.import_trails
  trails = get_geojson('Trails.geojson')

  trails.each do |t|
    park_name = t.properties["Park_name"]
    park_name = "East Fairmount Park" if park_name == "East Park"
    park = Park.find_by(name: park_name)
    Trail.create(
      id: t.feature_id,
      name: t.properties["name"],
      park: park,
      trail_type: "#{t.properties["TYPE"]}_#{t.properties["Type2"]}",
      limits: t.properties["Limits"],
      length: t.properties["Trl_Length"],
      width: t.properties["WIDTH"],
      material: t.properties["MATERIAL"],
      geospatial_data: t.geometry
    )
  end
end

def self.import_parks_and_rec_data
  import_park_districts
  import_parks
  import_park_entrances
  import_trails
end

import_parks_and_rec_data
