json.array!(@earthquakes) do |earthquake|
  json.extract! earthquake, :id, :usgs_id, :tsunami, :year, :month, :day, :hour, :minute, :second, :focal_depth, :eq_primary, :eq_mag_mw, :eq_mag_ms, :eq_mag_mb, :eq_mag_ml, :eq_mag_mfa, :eq_mag_unk, :intensity, :country, :state, :location, :latitude, :longitude, :region_code, :houses_damaged, :houses_damaged_description, :total_houses_damaged, :total_houses_damaged_description, :death_count, :death_description, :missing_count, :missing_description, :injury_count, :injury_description, :damage_cost, :damage_description, :houses_destroyed, :houses_destroyed_description, :total_deaths, :total_deaths_description, :total_missing, :total_missing_description, :total_injuries, :total_injuries_description, :total_damage_cost, :total_damage_description, :total_houses_destroyed, :total_houses_destroyed_description
  json.url earthquake_url(earthquake, format: :json)
end