Rails.application.routes.draw do

  resources :coupons, only: [:index, :new]
  get 'coupon/:id', to: 'coupons#show', as: 'coupon'
  post 'coupons', to: 'coupons#create', as: 'coupons_create'

end
  # post: I'm creating a path, 
  # to: look inside the action create inside the coupons_controller
  # as: what I'm renaming it to. (the name is used inside the 
  # new.html.erb )
