Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'vehicle/:kunta/:vehicle_type' => 'vehicle#get_vehicles'
  get 'vehicle/:kunta' => 'vehicle#get_vehicles'
end
