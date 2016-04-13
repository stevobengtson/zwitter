class Zombie < ActiveRecord::Base
  belongs_to :graveyard
  has_many :grunts, dependent: :delete_all
  has_many :blogs, dependent: :delete_all
  has_many :comments, dependent: :delete_all

  paginates_per 25
  max_paginates_per 100
end
