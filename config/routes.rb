Rails.application.routes.draw do
  resources :tuis do
    collection do
      post :confirm
    end
  end
end
