class ExpansionsController < ApplicationController
    def index
        @expansions = Expansion.all
    end
end
