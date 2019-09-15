Rails.application.routes.draw do
  resources :shipping_rates do
    resources :service_providers
  end

  resources :service_providers
end
