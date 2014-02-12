require 'nokogiri'
require 'set'

module Refinery
  module PagesHelper
    AlignmentClasses = Set.new(['float-left', 'float-right', 'center'])
    
    def decorate_img_tags(content)
      html = Nokogiri::HTML(content)
      images = html.css('img')
      images.each { |i| add_alignment_class(i) }
      html.to_html
    end
  
    protected
    
    def add_alignment_class(img_node)
      class_str = img_node['class'] || ''
      img_classes = Set.new(class_str.split)
      
      if( (img_classes & AlignmentClasses).empty? )
        img_classes.add('float-left')
        img_node['class'] = img_classes.to_a.join ' '
      end
    end
    
    #to be removed (kept for reference)
    #def wrap_img_tag(img_node)
    #  builder = Nokogiri::HTML::Builder.new do |doc|
    #    doc.div(:class => 'ym-gbox-left ym-clearfix') {
    #      img_node['class'] = 'float-left'
    #      doc << img_node.to_html
    #    }
    #  end
    #  builder.to_html
    #end
  end
end
