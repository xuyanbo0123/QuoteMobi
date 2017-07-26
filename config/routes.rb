Rails.application.routes.draw do
  resources :leads

  root 'static_pages#welcome'

  get 'app' => 'static_pages#app'
  get 'about' => 'static_pages#about'

end
