require 'sidekiq/web'

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  Sidekiq::Web.use Rack::Auth::Basic do |username, password|
    ActiveSupport::SecurityUtils.secure_compare(::Digest::SHA256.hexdigest(username), ::Digest::SHA256.hexdigest(ENV["SIDEKIQ_WEB_USERNAME"])) &
      ActiveSupport::SecurityUtils.secure_compare(::Digest::SHA256.hexdigest(password), ::Digest::SHA256.hexdigest(ENV["SIDEKIQ_WEB_PASSWORD"]))
  end

  mount Sidekiq::Web, at: "/sidekiq"

  # Defines the root path route ("/")
  root "home#index"
  
  get '/redirect_to_caixa_last_result_redirect', to: redirect(AppConstants::CAIXA_LAST_RESULT_URL)
  get '/sorted_number', to: 'home#sorted_number'
end
