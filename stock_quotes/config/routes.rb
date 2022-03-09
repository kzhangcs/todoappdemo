Rails.application.routes.draw do
  get 'stock_quotes/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'stock_quotes#index'
end
