class Car

  attr_reader :make, :model, :classification, :owner, :mechanic
  @@all = []

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end 

  def self.type
    Car.all.map { |car| car.classification }.uniq
  end

  def mechanic_who_can_work
    Mechanic.all.select { |guy| guy.specialty == self.classification }
  end

end
