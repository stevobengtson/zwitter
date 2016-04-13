class Zombie
  class Raiser
    def initialize(zombie)
      raise 'Please provide a zombie to raise' unless zombie.is_a?(Zombie)
      @zombie = zombie
    end

    def raise
      dikika = Graveyard.find_by(name: 'Dikika')
      raise 'Unable to find Dikika Graveyard!' if dikika.nil?
      master_zombie = Zombie.find_by(name: 'Lucy', graveyard: dikika)
      raise 'Unable to find Master Zombie!' if master_zombie.nil?
      grunt = Grunt.create(zombie: @zombie, message: "I have risen!")
      Comment.create(message: "Welcome back #{@zombie.name}!", commentable: grunt, zombie: master_zombie)
    end
  end
end
