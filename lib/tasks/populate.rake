require "#{Rails.root}/lib/populator" unless defined?(Populator)

namespace :populate do
  desc 'Load up random data'
  task all: :environment do
    Rake::Task['populate:graveyards'].invoke
    Rake::Task['populate:zombies'].invoke
    Rake::Task['populate:grunts'].invoke
    Rake::Task['populate:blogs'].invoke
  end

  desc 'Load random graveyards'
  task graveyards: :environment do
    populate_item('graveyard', 100)
  end

  desc 'Load random zombies'
  task zombies: :environment do
    populate_item('zombie', 100)
  end

  desc 'Load random grunts'
  task grunts: :environment do
    populate_item('grunt', 100)
  end

  desc 'Load random blogs'
  task blogs: :environment do
    populate_item('blog', 100)
  end

  def populate_item(name, count)
    puts "Loading random #{name.pluralize}..."
    progressbar = create_progress(name, count)
    (1..count).each do
      create_item(name)
      progressbar.increment
    end
  end

  def create_item(name)
    case name
    when 'zombie'
      Populator.zombie
    when 'graveyard'
      Populator.graveyard
    when 'grunt'
      Populator.grunt(SecureRandom.random_number(25))
    when 'blog'
      Populator.blog(SecureRandom.random_number(25))
    end
  end

  def create_progress(name, count)
    ProgressBar.create(
      title: name.humanize.pluralize,
      starting_at: 0,
      total: count,
      progress_mark: '=',
      remainder_mark: ' ',
      format: '%e |%b%i| %p%% %t'
    )
  end
end
