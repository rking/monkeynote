Monkeynote::Application.routes.draw do
  resources :leaves, :tags
  root to: 'leaves#index'
end
