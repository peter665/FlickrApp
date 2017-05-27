Rails.application.routes.draw do
  root to: 'static_pages#home'

  get '/photos', to: 'static_pages#photos'

end
