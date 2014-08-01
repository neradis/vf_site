module Refinery::PageHelper

  def content_block_names
    part_titles = @page.parts.collect { |pp| pp.title }
    part_titles.select { |t| t.starts_with? "Body" }.sort
  end
end
