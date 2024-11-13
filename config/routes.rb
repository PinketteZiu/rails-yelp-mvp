Rails.application.routes.draw do
  resources :restaurants, shallow: true do
    resources :reviews, only: %i[create destroy]
  end
end
