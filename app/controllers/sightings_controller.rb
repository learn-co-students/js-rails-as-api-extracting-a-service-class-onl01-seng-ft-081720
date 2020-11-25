class SightingsController < ApplicationController
    def show
        sighting = Sighting.find_by(id: params[:id])
    render json: SightingSerializer.new(sighting).to_serialized_json

    end
end
