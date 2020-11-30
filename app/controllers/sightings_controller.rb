class SightingsController < ApplicationController
    def index
        sightings = Sighting.all
        render json: SightingSerializer.new(sightings).to_serialized_json
      end

    def show
        sighting = Sighting.find(params[:id])
        render json:  SightingsSerializer.new(sighting).to_serialized_json
    end
end
