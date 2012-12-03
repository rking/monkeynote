Monkeynote::Application.routes.draw do
  resources :leafs
  root to: 'welcome#index'
end
