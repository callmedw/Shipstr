Rails.application.routes.draw do
  resources :shipping_rates
  resources :shipping_rates do
    resources :service_providers
  end
end
