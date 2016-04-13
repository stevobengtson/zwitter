class GruntDecorator < Draper::Decorator
  delegate_all

  def post_time
    created_at.to_s('%B %d, %Y %l:%M %p')
  end
end
