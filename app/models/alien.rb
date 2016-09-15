class Alien < ApplicationRecord
    enum colour: [:green, :amber, :red]
    belongs_to :expansion
end
