module ApplicationHelper
  
  def display_raw_content(str_content)
    raw(str_content)[0,3] === '<p>' ? raw(str_content) : raw("<p>#{str_content}</p>")
  end
  
end
