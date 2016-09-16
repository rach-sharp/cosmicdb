class AliensController < ApplicationController
    def index
        @aliens = Alien.all
    end

    def show
        @alien = Alien.find(params[:id])
    end
end
