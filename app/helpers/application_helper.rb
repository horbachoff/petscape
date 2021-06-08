module ApplicationHelper

  def should_hide?
    params[:controller] == "pages" && params[:action] == "home"
  end
end
