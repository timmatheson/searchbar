# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def image_path(result)
    "/images/#{result}"
  end
end
