Rails.application.routes.draw do
  match('/', { via: :get, :to => 'species#index' })
  match('/new', { via: :get, :to => 'species#new'})
  match('/', { via: :post, :to => 'species#create'})
  match('/:id/edit', { via: :get, :to => 'species#edit'})
  match('/:id', { via: :get, :to => 'species#show'})
  match('/:id', { via: :post, to: 'sightings#create' })
  match('/:id', { via: [:patch, :put], :to => 'species#update'})
  match('/:id', { via: :delete, :to => 'species#destroy'})
  match('/sighting/:id', { via: :get, :to => 'sightings#show'})
  match('/sighting/:id', { via: [:patch, :put], :to => 'sightings#update'})
  match('/sighting/:id', { via: :delete, :to => 'sightings#destroy'})
  end
