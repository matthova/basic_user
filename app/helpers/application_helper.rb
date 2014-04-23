module ApplicationHelper
  def session_status(current_user)
    if current_user
      render :partial => "shared/session_status", locals: { current_user: current_user }
    else
      render :partial => "shared/login_prompt"
    end
  end
  
  def footer_text
    render :partial => "shared/footer_text"
  end
  
  def nav_bar
    render :partial => "shared/nav_bar"
  end
end
