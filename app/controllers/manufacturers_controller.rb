class ManufacturersController < ApplicationController
    def index
        @manufacturers = Manufacturer.all
    end

    def new

    end

    def show
        @manufacturer = Manufacturer.find(params[:id])
    end

    def create 
        @manufacturer = Manufacturer.new({
            name: params[:name],
            origin: params[:origin],
            is_adm: params[:is_adm],
            owned_brands: params[:owned_brands],
        })

        manufacturer.save
        redirect_to "/manufacturers"
    end
end