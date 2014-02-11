module ApplicationHelper
  def vf_heading
    xml = Builder::XmlMarkup.new
    xml.span 'Vokal', :style => 'margin-left: -0.5ex;'
    xml.span 'Fabrik', :style => 'vertical-align:sub;'
    render :inline => xml.target!
  end
  
  def page_menu_data
    active_page = @page
    pages = Refinery::Page.in_menu.sort_by { |p| p.lft }
    link_data = pages.inject(Hash.new) do |h,p|
      h[p] = {active: active_page.present? && p == active_page, 
              link_text: page_link_text(p),
              target: p.slug.present? && p.slug || p}
      h 
    end
    {pages: pages, link_data: link_data}
  end

  def page_link_text(page)
    page.menu_title.present? && page.menu_title || page.title      
  end
end
