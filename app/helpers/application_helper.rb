module ApplicationHelper
  def full_title(page_title)
    base_title = "日本の総理大臣"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end
