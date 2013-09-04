OutilWeb::Application.routes.draw do

  devise_for :users
  root :to => "landing#index"

  get "api/publish"
  get "api/localize"
  get "api/authenticate"
  get "api/take"

  get "register/start"
  post "register/submit"
  get "register/success"

  get "dashboard" => 'dashboard#index'

  get "login" => 'login#index'
  post "login/submit"

  get "profile/mine"
  get "profile/edit"
  post "profile/submit"
  get "users/:username" => 'profile#show'

  get "users/:username/:utilityname" => 'utility#show'
  get "users/:username/:utilityname/edit" => 'utility#edit'
  post "users/:username/:utilityname/submit" => 'utility#submit'
  get "users/:username/:utilityname/run" => 'utility#run'
  get "users/:username/:utilityname/assert" => 'utility#assert'
  get "users/:username/:utilityname/versions" => 'utility#versions'
end
