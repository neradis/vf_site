require 'builder'

class HomeController < ApplicationController
  include ApplicationHelper
 
  def info
    render :text => @available_methods = methods.sort.join(' ')
  end

  def pages_in_menu
    pagelist = Refinery::Page.in_menu
    render :json => pagelist
  end

  def page_menu
    active = @page.present? && @page || Refinery::Page.where(:link_url => '/').first
    viewable = Refinery::Page.in_menu
    

    render :json => page_menu_data
  end

  def xmltest
    xml = Builder::XmlMarkup.new
    html = xml.p do
      xml.b 'Fettes'
      xml.text! ' Ding.'
    end
    render :text => xml.target!
  end

  def page_type_info
    render :text => Refinery::Page.in_menu.first.methods.join(', ')
  end

  def page_slugs
    psummaries = Refinery::Page.all.map { |p| "#{p.menu_title}-#{p.slug}" } 
    render :text => psummaries.join("\n")
  end
end
