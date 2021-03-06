AdventureLibrary::Application.routes.draw do
resources :adventures do
  resources :pages
end

resources :libraries
  root "adventures#index"
  # post "/adventures/:adventure_id/library", to: "libraries#create"#, as: "new_adv"

#              Prefix Verb   URI Pattern                                        Controller#Action
#     adventure_pages GET    /adventures/:adventure_id/pages(.:format)          pages#index
#                     POST   /adventures/:adventure_id/pages(.:format)          pages#create
#  new_adventure_page GET    /adventures/:adventure_id/pages/new(.:format)      pages#new
# edit_adventure_page GET    /adventures/:adventure_id/pages/:id/edit(.:format) pages#edit
#      adventure_page GET    /adventures/:adventure_id/pages/:id(.:format)      pages#show
#                     PATCH  /adventures/:adventure_id/pages/:id(.:format)      pages#update
#                     PUT    /adventures/:adventure_id/pages/:id(.:format)      pages#update
#                     DELETE /adventures/:adventure_id/pages/:id(.:format)      pages#destroy
#          adventures GET    /adventures(.:format)                              adventures#index
#                     POST   /adventures(.:format)                              adventures#create
#       new_adventure GET    /adventures/new(.:format)                          adventures#new
#      edit_adventure GET    /adventures/:id/edit(.:format)                     adventures#edit
#           adventure GET    /adventures/:id(.:format)                          adventures#show
#                     PATCH  /adventures/:id(.:format)                          adventures#update
#                     PUT    /adventures/:id(.:format)                          adventures#update
#                     DELETE /adventures/:id(.:format)                          adventures#destroy
#           libraries GET    /libraries(.:format)                               libraries#index
#                     POST   /libraries(.:format)                               libraries#create
#         new_library GET    /libraries/new(.:format)                           libraries#new
#        edit_library GET    /libraries/:id/edit(.:format)                      libraries#edit
#             library GET    /libraries/:id(.:format)                           libraries#show
#                     PATCH  /libraries/:id(.:format)                           libraries#update
#                     PUT    /libraries/:id(.:format)                           libraries#update
#                     DELETE /libraries/:id(.:format)                           libraries#destroy
#                root GET    /                                                  adventures#index

end