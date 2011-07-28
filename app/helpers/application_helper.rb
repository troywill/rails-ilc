module ApplicationHelper
  def html_header
    link_1 = link_to "https://github.com/troywill/rails-ilc", "https://github.com/troywill/rails-ilc"
    link_2 = link_to "http://troywill.com:7000", "http://troywill.com:7000"

    return "#{link_1} | #{link_2}".html_safe
  end
end
