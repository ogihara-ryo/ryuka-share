# == Route Map
#
#              Prefix Verb   URI Pattern                            Controller#Action
#                root GET    /                                      top#index
#        user_profile POST   /users/:user_id/profile(.:format)      profiles#create
#    new_user_profile GET    /users/:user_id/profile/new(.:format)  profiles#new
#   edit_user_profile GET    /users/:user_id/profile/edit(.:format) profiles#edit
#                     GET    /users/:user_id/profile(.:format)      profiles#show
#                     PATCH  /users/:user_id/profile(.:format)      profiles#update
#                     PUT    /users/:user_id/profile(.:format)      profiles#update
#                     DELETE /users/:user_id/profile(.:format)      profiles#destroy
#               users GET    /users(.:format)                       users#index
#                     POST   /users(.:format)                       users#create
#            new_user GET    /users/new(.:format)                   users#new
#           edit_user GET    /users/:id/edit(.:format)              users#edit
#                user GET    /users/:id(.:format)                   users#show
#                     PATCH  /users/:id(.:format)                   users#update
#                     PUT    /users/:id(.:format)                   users#update
#                     DELETE /users/:id(.:format)                   users#destroy
#              groups GET    /groups(.:format)                      groups#index
#                     POST   /groups(.:format)                      groups#create
#           new_group GET    /groups/new(.:format)                  groups#new
#          edit_group GET    /groups/:id/edit(.:format)             groups#edit
#               group GET    /groups/:id(.:format)                  groups#show
#                     PATCH  /groups/:id(.:format)                  groups#update
#                     PUT    /groups/:id(.:format)                  groups#update
#                     DELETE /groups/:id(.:format)                  groups#destroy
#              topics GET    /topics(.:format)                      topics#index
#                     POST   /topics(.:format)                      topics#create
#           new_topic GET    /topics/new(.:format)                  topics#new
#          edit_topic GET    /topics/:id/edit(.:format)             topics#edit
#               topic GET    /topics/:id(.:format)                  topics#show
#                     PATCH  /topics/:id(.:format)                  topics#update
#                     PUT    /topics/:id(.:format)                  topics#update
#                     DELETE /topics/:id(.:format)                  topics#destroy
#    topic_categories GET    /topic_categories(.:format)            topic_categories#index
#                     POST   /topic_categories(.:format)            topic_categories#create
#  new_topic_category GET    /topic_categories/new(.:format)        topic_categories#new
# edit_topic_category GET    /topic_categories/:id/edit(.:format)   topic_categories#edit
#      topic_category GET    /topic_categories/:id(.:format)        topic_categories#show
#                     PATCH  /topic_categories/:id(.:format)        topic_categories#update
#                     PUT    /topic_categories/:id(.:format)        topic_categories#update
#                     DELETE /topic_categories/:id(.:format)        topic_categories#destroy
#               tasks GET    /tasks(.:format)                       tasks#index
#                     POST   /tasks(.:format)                       tasks#create
#            new_task GET    /tasks/new(.:format)                   tasks#new
#           edit_task GET    /tasks/:id/edit(.:format)              tasks#edit
#                task GET    /tasks/:id(.:format)                   tasks#show
#                     PATCH  /tasks/:id(.:format)                   tasks#update
#                     PUT    /tasks/:id(.:format)                   tasks#update
#                     DELETE /tasks/:id(.:format)                   tasks#destroy
#     task_categories GET    /task_categories(.:format)             task_categories#index
#                     POST   /task_categories(.:format)             task_categories#create
#   new_task_category GET    /task_categories/new(.:format)         task_categories#new
#  edit_task_category GET    /task_categories/:id/edit(.:format)    task_categories#edit
#       task_category GET    /task_categories/:id(.:format)         task_categories#show
#                     PATCH  /task_categories/:id(.:format)         task_categories#update
#                     PUT    /task_categories/:id(.:format)         task_categories#update
#                     DELETE /task_categories/:id(.:format)         task_categories#destroy
#            messages GET    /messages(.:format)                    messages#index
#                     POST   /messages(.:format)                    messages#create
#         new_message GET    /messages/new(.:format)                messages#new
#        edit_message GET    /messages/:id/edit(.:format)           messages#edit
#             message GET    /messages/:id(.:format)                messages#show
#                     PATCH  /messages/:id(.:format)                messages#update
#                     PUT    /messages/:id(.:format)                messages#update
#                     DELETE /messages/:id(.:format)                messages#destroy
#           schedules GET    /schedules(.:format)                   schedules#index
#                     POST   /schedules(.:format)                   schedules#create
#        new_schedule GET    /schedules/new(.:format)               schedules#new
#       edit_schedule GET    /schedules/:id/edit(.:format)          schedules#edit
#            schedule GET    /schedules/:id(.:format)               schedules#show
#                     PATCH  /schedules/:id(.:format)               schedules#update
#                     PUT    /schedules/:id(.:format)               schedules#update
#                     DELETE /schedules/:id(.:format)               schedules#destroy
#

Rails.application.routes.draw do
  root 'top#index'

  resources :users do
    resource :profile
  end

  resources :groups
  resources :topics
  resources :topic_categories
  resources :tasks
  resources :task_categories
  resources :messages
  resources :schedules
end
