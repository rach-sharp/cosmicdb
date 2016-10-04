class AliensController < ApplicationController
    def index
        @aliens = Alien.paginate(:page => params[:page], :per_page => 20).order('name ASC')
    end

    def show
        @alien = Alien.find(params[:id])
    end
end
