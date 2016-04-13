class ZombieRaiser
  def raise_zombie(zombie = nil)
    zombie = create_zombie if zombie.nil?
    Zombie::Raiser.new(zombie).raise
  end

  private

  def create_zombie
    graveyard = locate_graveyard
    Zombie.create(name: Faker::Name.name, status: 'Newly risen', graveyard: graveyard)
  end

  def locate_graveyard
    Graveyard.limit(1).order('RAND()').first
  end
end
