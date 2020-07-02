module ApplicationHelper

  def full_title(page_title="")
    base_title = "BookLike"
    if page_title.empty?
      base_title.to_s
    else
      page_title.to_s + "|" + base_title.to_s
    end
  end
end
