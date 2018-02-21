Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      resources :shops, only: [:index] do
        scope module: :shops do
          resources :books, only: [] do
            collection do
              post :mark_as_sold
            end
          end
        end
      end
    end
  end

end
