Rails.application.routes.draw do
  scope 'api' do
    scope 'v1' do
      resources :users, except: [:new, :edit]
    end
  end

  resources :apidocs, only: [:index]

  get '/api' => redirect('/swagger/dist/index.html?url=/apidocs')

  root 'users#index'
end
