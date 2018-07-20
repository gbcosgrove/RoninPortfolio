module ApplicationHelper
  
  def login_helper
    if current_user.is_a?(GuestUser)
      (link_to "Sign Up", new_user_registration_path) +
      "<br>".html_safe +
      (link_to "Login", new_user_session_path)
    else
      link_to "Logout", destroy_user_session_path, method: :delete
    end
  end

  def source_helper(layout)
    if session[:source]
      content_tag(:p, "Thanks for visiting me from #{session[:source]}. You are on the #{layout} layout")
    end
  end

  def copyright_generator
  end
  
end
