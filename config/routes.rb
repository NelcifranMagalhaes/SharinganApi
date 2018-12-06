Rails.application.routes.draw do
  devise_for :users
    namespace :api do
    namespace :v1 do
      resources :quotes, only: [:index, :show] do
        get 'quotes/:search_tag', to: 'quotes#quotes', on: :collection
      end
    end
  end
 
  # constraints subdomain: 'api' do
  #   scope module: 'api' do
  #     namespace :v1 do
  #       resources :contacts
  #     end
  #   end
  # end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
