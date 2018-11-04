Rails.application.routes.draw do

  resources :parking_meters do 
  	member do
  		get :active_parking_meters
  		get :inactive_parking_meters
  		get :out_of_order_parking_meters
  		post :new
  	end 
  end 
  
  root to: 'parking_meters#index'
end
