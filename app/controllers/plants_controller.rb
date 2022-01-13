class PlantsController < ApplicationController

    wrap_parameters format: []
# /GET
def index
    render json: Plant.all
end
# /plants/id

def show
    plant = Plant.find_by(id: params[:id])
    if plant
        render json: plant
    else
        render json: {error: "Plant not found"}, status: :not_found
    end
end
# POST

def create
plant = plant = Plant.create(plant_params)
render json: plant, status: :created

end



private

def plant_params

    params.permit(:name, :image, :price)
end

end
