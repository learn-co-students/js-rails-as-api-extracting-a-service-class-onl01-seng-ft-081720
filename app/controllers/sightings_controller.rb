class SightingsController < ApplicationController
    
    def index
        sightings = Sighting.all
        render json: SightingSerializer.new(sightings).to_serialized_json

        # Removed this logic from the controller and moved it to a single method that can be called in this controller
        # render json: sightings.to_json(:include => {
        #   :bird => {:only => [:name, :species]},
        #   :location => {:only => [:latitude, :longitude]}
        # }, :except => [:updated_at])
    end

    def show
        @sighting = Sighting.find(params[:id])
        render json: SightingSerializer.new(sightings).to_serialized_json
        # removed and added to serializer
        # render json: @sighting.to_json(:include => {:bird => {:only =>[:name, :species]}, :location => {:only =>[:latitude, :longitude]}}, :except => [:updated_at])
    end
end
# Extraction complete! We've resolved the issue of keeping our controller clear of excess logic by moving it to a separate class.