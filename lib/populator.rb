class Populator
  class << self
    def zombie
      Zombie.create(
        name: Faker::Name.name,
        status: Faker::Lorem.sentence,
        graveyard_id: Graveyard.limit(1).order('RAND()').first.id
      )
    end

    def graveyard
      Graveyard.create(
        name: Faker::Name.name,
        address: "#{Faker::Address.street_address}, #{Faker::Address.city},
 #{Faker::Address.state_abbr}, #{Faker::Address.zip} USA"
      )
    end

    def grunt(comments = 25)
      new_grunt = Grunt.create(
        zombie_id: Zombie.limit(1).order('RAND()').first.id,
        message: Faker::Lorem.sentence
      )
      (1..comments).each { comment(new_grunt) }
      new_grunt
    end

    def blog(comments = 25)
      new_blog = Blog.create(
        title: Faker::Lorem.sentence,
        body: Faker::Lorem.paragraph,
        zombie_id: Zombie.limit(1).order('RAND()').first.id
      )
      (1..comments).each { comment(new_blog) }
      new_blog
    end

    def comment(commentable)
      Comment.create(
        message: Faker::Lorem.sentence,
        zombie_id: Zombie.limit(1).order('RAND()').first.id,
        commentable: commentable
      )
    end
  end
end
