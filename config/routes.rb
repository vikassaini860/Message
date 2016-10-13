Rails.application.routes.draw do
 
 resource :contents
 root 'results#search'
 get '/contents'=>'contents#index'
 post '/contents'=>'contents#create'
 get '/contents/new'=>'contents#new'
 get '/contents/delete/:id'=>'contents#delete' , as: :delete_path
 get '/contents/search'=>'results#search'
 get 'contents/show/:id'=>'contents#show' ,as: :show
 get '/contents/edit/:id'=>'contents#edit' ,as: :edit
 #get '/contents/update'
 #patch '/contents/update'

end
