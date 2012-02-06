Ompc::Application.routes.draw do
  resources :file_downloads

  resources :project_downloads

  resources :project_files

  resources :edits

  resources :messages

  resources :user_comments

  resources :project_comments

  resources :projects

  resources :users

end
