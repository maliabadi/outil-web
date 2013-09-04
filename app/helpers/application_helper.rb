module ApplicationHelper

  def format_github user
    "https://github.com/#{user.github}"
  end

  def format_stack_overflow user
    "http://stackoverflow.com/users/#{user.stack_overflow}"
  end
end
