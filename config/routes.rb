Rails.application.routes.draw do
  post 'user/sign_up'

  get 'user/sign_in'

  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
