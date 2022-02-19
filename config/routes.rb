Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
  
  get '/redirect_to_caixa_last_result_redirect', to: redirect(AppConstants::CAIXA_LAST_RESULT_URL)
  get '/sorted_number', to: 'home#sorted_number'
end
