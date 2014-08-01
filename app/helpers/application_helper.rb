module ApplicationHelper

  def page_menu_data
    pages = Refinery::Page.in_menu.sort_by { |p| p.lft }
    link_data = pages.inject(Hash.new) do |h, p|
      h[p] = {active: @page.present? && p == @page,
              link_text: page_link_text(p),
              target: p.url}
      h
    end
    {pages: pages, link_data: link_data}
  end

  def page_link_text(page)
    page.menu_title.present? && page.menu_title || page.title
  end
end
