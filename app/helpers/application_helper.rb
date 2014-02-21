module ApplicationHelper
  def is_active?(page_name)
    if params[:action] == page_name
      "active"
    end
  end

  def placeholder_image( width, height, text )
    return image_tag("http://placehold.it/#{width}x#{height}&text=#{text}")
  end
end
