class SuperHero
  attr_reader :name, :power, :bio

  def self.all 
    # renders all super_heros or empties the array instead of using a clear method.
    @@super_heros ||= []
  end

  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]

    @@super_heros << self
  end
end
