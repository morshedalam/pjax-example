PjaxExample::Application.routes.draw do
  controller :pages do
    get :welcome
    get :contact
    get :privacy
    get :terms
    get :about
  end

  resources :products

  root :to => 'pages#welcome'
end
