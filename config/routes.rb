Monkeynote::Application.routes.draw do
  resources :leaves
  root to: 'leaves#list'
end
