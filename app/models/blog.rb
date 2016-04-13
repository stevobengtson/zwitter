class Blog < ActiveRecord::Base
  include Commentable
  has_many :comments, as: :commentable, dependent: :delete_all
  belongs_to :zombie

  paginates_per 25
  max_paginates_per 100
end
