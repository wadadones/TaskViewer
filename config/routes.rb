Rails.application.routes.draw do
  resources :tasks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "couple/form" => "couple#form"
  post "couple/form/send" => "couple#form_submit"
  get "couple/show" => "couple#show"
end


