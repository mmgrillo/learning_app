Rails.application.routes.draw do
  

#"static_pages home and help routes" were create with the 
#rails generate controller StaticPages home help"
  get 'static_pages/home'
  get 'static_pages/help'

  get "static_pages/about"

  root "static_pages#home"

end
