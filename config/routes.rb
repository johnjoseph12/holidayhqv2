Rails.application.routes.draw do
  resources :trips do
    member do
      get 'flight_details'
      get 'hotel_details'
      get 'budget'
      get 'summary'
    end
  end

  root 'trips#new'
end
