class SightingsController < ApplicationController
  def show
    @sighting = Sighting.find_by(params[:id])
    options = {
      include: [:bird, :location]
    }
    render json: SightingSerializer.new(sighting, options)
  end
end