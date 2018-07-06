class AstronautsController < ApplicationController

  def index
    @astronauts = Astronaut.all
    @average_ages = Astronaut.average_age
  end
end
