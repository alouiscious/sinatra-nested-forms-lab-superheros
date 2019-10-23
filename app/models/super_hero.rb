class SuperHero
  
  attr_reader :name, :power, :bio

  SUPERHEROES = []

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]

    SUPERHEROES << self
  end

  def self.all 
    # renders all super_heros or empties the array instead of using a clear method.
    SUPERHEROES
  end
end
