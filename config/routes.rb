Rails.application.routes.draw do
  root 'todo#index'

  get 'todos', to: 'todos#index'
  get 'todos/new'
  post 'todos', to: 'todos#create'
  get 'todos/:id', to: 'todos#show', as: 'todo'
  get 'todos/:id/edit', to: 'todos#edit', as: 'todo_edit'
  patch 'todos/:id/', to: 'todos#update'
  delete 'todos/:id/', to: 'todos#destroy'
  get 'todos/:id/complete', to: 'todos#complete', as:'completar'
  get 'list', to: 'todos#list', as: 'todos_list'

end
