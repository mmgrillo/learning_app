Rails.application.routes.draw do
  

  get 'users/new'

#"static_pages home and help routes" were create with the 
#rails generate controller StaticPages home help"

#this new syntax "get 'help'    => 'static_pages#help'" permits 
#getting e.g. "help" page in localhost:3000/help, instead 
#of localhost:3000/static_pages/help 

 root             'static_pages#home'
  get 'help'    => 'static_pages#help'
  get 'about'   => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  get 'signup'  => 'users#new'

end
