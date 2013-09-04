OutilWeb::Application.routes.draw do

  devise_for :users
  root :to => "landing#index"

  devise_scope :user do
    get "/register" => "devise/registrations#new", :as =>:register
    get "/login" => "devise/sessions#new", :as => :login
  end

  get "api/publish"
  get "api/localize"
  get "api/authenticate"
  get "api/take"

  get "dashboard" => 'dashboard#index', :as => :dashboard

  get "login" => 'login#index'
  post "login/submit"

  get "profile/mine", :as => :profile
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
