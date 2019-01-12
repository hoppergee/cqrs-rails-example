Rails.application.routes.draw do
  root 'welcome#index'

  scope :ddd_ordering do
    resources :orders, only: [:index, :show, :new, :create] do
      collection do
        post :expire
      end
      member do
        post :add_item
        post :remove_item
      end
    end
  end

  mount RailsEventStore::Browser => '/res'
end
