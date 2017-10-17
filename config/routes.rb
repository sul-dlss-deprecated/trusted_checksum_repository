Rails.application.routes.draw do
  resources :checksum_records, only: [:create, :show]
end
