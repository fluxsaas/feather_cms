FeatherCms::Engine.routes.draw do
  resources :pages do
    member do
      get 'preview'
    end
  end
end

# hook into the main app routes
if defined?(Rails)
  Rails.application.routes.draw do
    get 'page/:id' => 'FeatherCms::pages#published', :as => 'published_page'
  end  
end
