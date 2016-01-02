module ApplicationHelper
  def page_title(title)
    if title.blank?
      RyukaShare::Application.config.title
    else
      "#{title} | #{RyukaShare::Application.config.title}"
    end
  end
end
