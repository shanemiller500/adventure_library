AdventureLibrary::Application.routes.draw do
  resources :adventures do
  resources :pages
  resources :libary
end

  root "adventure#index"
  get "/adventures/:adventure_id/libary", to: "libary#create"#, as: "new_adv"
#            Prefix Verb   URI Pattern                                         Controller#Action
#        adventure_pages GET    /adventures/:adventure_id/pages(.:format)           pages#index
#                        POST   /adventures/:adventure_id/pages(.:format)           pages#create
#     new_adventure_page GET    /adventures/:adventure_id/pages/new(.:format)       pages#new
#    edit_adventure_page GET    /adventures/:adventure_id/pages/:id/edit(.:format)  pages#edit
#         adventure_page GET    /adventures/:adventure_id/pages/:id(.:format)       pages#show
#                        PATCH  /adventures/:adventure_id/pages/:id(.:format)       pages#update
#                        PUT    /adventures/:adventure_id/pages/:id(.:format)       pages#update
#                        DELETE /adventures/:adventure_id/pages/:id(.:format)       pages#destroy
#        adventures_root GET    /adventures(.:format)                               adventure#index
# adventure_libary_index GET    /adventures/:adventure_id/libary(.:format)          libary#index
#                        POST   /adventures/:adventure_id/libary(.:format)          libary#create
#   new_adventure_libary GET    /adventures/:adventure_id/libary/new(.:format)      libary#new
#  edit_adventure_libary GET    /adventures/:adventure_id/libary/:id/edit(.:format) libary#edit
#       adventure_libary GET    /adventures/:adventure_id/libary/:id(.:format)      libary#show
#                        PATCH  /adventures/:adventure_id/libary/:id(.:format)      libary#update
#                        PUT    /adventures/:adventure_id/libary/:id(.:format)      libary#update
#                        DELETE /adventures/:adventure_id/libary/:id(.:format)      libary#destroy
#             adventures GET    /adventures(.:format)                               adventures#index
#                        POST   /adventures(.:format)                               adventures#create
#          new_adventure GET    /adventures/new(.:format)                           adventures#new
#         edit_adventure GET    /adventures/:id/edit(.:format)                      adventures#edit
#              adventure GET    /adventures/:id(.:format)                           adventures#show
#                        PATCH  /adventures/:id(.:format)                           adventures#update
#                        PUT    /adventures/:id(.:format)                           adventures#update
#                        DELETE /adventures/:id(.:format)                           adventures#destroy                        adventures#destroy
end
