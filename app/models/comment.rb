class Comment < ActiveRecord::Base
  belongs_to :commentable, polymorphic: true
  belongs_to :zombie

  paginates_per 25
  max_paginates_per 100
end
