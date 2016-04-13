class Graveyard < ActiveRecord::Base
  has_many :zombies, dependent: :delete_all

  paginates_per 25
  max_paginates_per 100
end
