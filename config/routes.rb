Rails.application.routes.draw do
  resources :service_providers do
    resources :shipping_rates
  end

  resources :shipping_rates do
    resources :service_providers
  end
end
