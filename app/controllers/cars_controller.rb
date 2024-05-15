class CarsController < ApplicationController
    def index
        @cars = Car.all
    end

    def new
    end

    def show
        @car = Car.find(params[:id])
    end

    def create
        car = Car.new({
            title: params[:title],
            description: params[:description]
        })

        car.save
        redirect_to "/cars"
    end
end