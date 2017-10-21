Rails.application.routes.draw do
  get 'users/new'

  devise_for :users
  get 'sessions/new'

	resources :usuarios, only: [:new, :create, :destroy]  #gera todos os caminhos que você pode precisar, o only faz com q limite quais caminhos qro q crie 
#	post "/usuarios" => "pages#create"
#	get "/usuarios/new" => "pages#new"

#	delete "/usuarios/:id" => "pages#destroy", as: :usuario 
	##get "/usuarios/:id/remove" => "pages#destroy" - codigo antes de eu colocar para o rails criar a url para deletar

	get "/usuarios/busca" => "usuarios#busca", as: :busca_usuario

	get "/usuarios/topico1" => "usuarios#topico1", as: :topico1_usuario
	get "/usuarios/teste" => "usuarios#teste", as: :teste_usuario

	root "usuarios#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
