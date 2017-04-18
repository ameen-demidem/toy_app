module ApplicationHelper
  def full_title(title)
    sub_title = title || ''
    full_title = 'ToyApp'
    full_title = "#{sub_title} | #{full_title}" unless sub_title.empty?
    return full_title
  end
end
