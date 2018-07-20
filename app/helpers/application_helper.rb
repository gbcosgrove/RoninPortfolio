module ApplicationHelper
  
  def login_helper
    if current_user.is_a?(User)
      link_to "Logout", destroy_user_session_path, method: :delete
    else
      (link_to "Sign Up", new_user_registration_path) +
      "<br>".html_safe +
      (link_to "Login", new_user_session_path)
    end
  end

  def source_helper(layout)
    if session[:source]
      content_tag(:p, "Thanks for visiting me from #{session[:source]}. You are on the #{layout} layout")
    end
  end
  
end
