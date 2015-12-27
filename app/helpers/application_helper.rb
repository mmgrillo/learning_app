module ApplicationHelper
  

  #returns the full title on a per-page basis
  def full_title(page_title = '')                   # method def, optional arg(argument)
  	base_title = "The Reference and Learning App"   # variable assignment
  	if page_title.empty?                            # Boolean Test
  		base_title																		# implicit return
  	else
  		page_title + " | " + base_title               #string concatenation
  	end
  end

end
