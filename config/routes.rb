Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => "home#index", as: "root"
  post '/' => "home#index", as: "home_post"
end
