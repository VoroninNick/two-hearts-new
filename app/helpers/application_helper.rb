module ApplicationHelper
  def is_active?(page_name)
    if params[:action] == page_name
      "active"
    end
  end

  def placeholder_image( width, height, text )
    return image_tag("http://placehold.it/#{width}x#{height}&text=#{text}")
  end

  def heart_title(title, tag = 'h3', link = false)
    #content_tag tag, class: 'heart_title' do
    #  if link
    #    image_tag('small-heart.png') + link_to(title, link)
    #  else
    #    image_tag('small-heart.png') + title
    #  end


    #end

    render partial: 'helpers/application_helper/heart_title', locals: { title: title, tag: tag, link: link }
  end

  def section_title(title, tag = 'h3', link)
    render inline: link.inspect
    #.section-title
    #.row
    #.flower-left.columns.large-1
    #= image_tag('flower-left.png')
    #.section-title-line.columns.large-3
    #
    #.columns.large-4
    #h3.heart-title
    #|Відгуки про нас
    #
    #.section-title-line.columns.large-3
    #
    #.flower-right.columns.large-1
    #= image_tag('flower-right.png', class: 'right')

    #content_tag :div, class: 'section-title' do
    #  content_tag :div, class: 'row' do
    #    content_tag :div, class: 'flower-left columns large-1' do
    #      image_tag('flower-left.png')
    #    end
    #
    #    content_tag( :div, class: 'section-title-line columns large-3' ) +
    #
    #    content_tag( :div, class: 'columns large-4') do
    #      heart_title( title, tag )
    #    end +
    #
    #    content_tag( :div, class: 'section-title-line columns large-3' ) +
    #
    #    content_tag ( :div, class: 'flower-right columns large-1' ) do
    #      image_tag('flower-right.png', class: 'right')
    #    end
    #  end
    #end

    render partial: 'helpers/application_helper/section_title', locals: { title: title, tag: tag, link: link }
  end
end
