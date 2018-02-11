class BlogDecorator < Draper::Decorator
  delegate_all

  def user_email
    object.user.email
  end
end
