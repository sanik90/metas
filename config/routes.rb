Rails.application.routes.draw do
  root 'team#index', as: 'index'
  get 'team' => 'team#team', as: 'team_index'
  post 'create' => 'team#team', as: 'team_create'
end
