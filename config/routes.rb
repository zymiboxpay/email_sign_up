Rails.application.routes.draw do
  post 'users/sign_up'

  get 'users/sign_in'

  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
