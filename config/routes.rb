Stickymemory::Application.routes.draw do
 resources :home, :only => [:index]
 resources :memory_search, :only => [:new]
 root :to => "home#index"
end
