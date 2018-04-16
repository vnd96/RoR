module ApplicationHelper
  def full_title page_title = ""
    base_title = I18n.t "static_pages.base_title"
    page_title.empty? ? base_title : page_title + " | " + base_title
  end
end
