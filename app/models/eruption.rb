class Eruption < ActiveRecord::Base

	def self.points
		points = []
		Eruption.all.pluck(:vei, :latitude, :longitude, :id).each do |eruption|
			points.push({
				'id' => eruption[3],
				'vei' => eruption[0], 
				'latitude' => eruption[1].to_s, 
				'longitude' => eruption[2].to_s
			})
		end
		return points
	end

end
