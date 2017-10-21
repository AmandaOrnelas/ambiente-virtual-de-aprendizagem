class UsuariosController < ApplicationController
	
	def index
		@usuarios = Usuario.all.order :nome
	end

	def create
		valores = params.require(:usuario).permit :nome, :login, :senha, :nivel, :codigo #permit! permite tudo
		usuario = Usuario.create valores

		redirect_to root_url
		#nome = params["nome"]
		#login = params["login"]
		#senha = params["senha"]
		#nivel = params["nivel"]
		#usuario = Usuario.new
		#usuario.nome = nome
		#usuario.login = login

	end

	def busca
		@nome_a_buscar = params[:nome]
		#resultado = Usuario.where(nome: nome) OU resultado = Usuario.where "nome = ?", fulano USO QUANDO É IGUAL - CASO DO LOGIN USA
		@usuarios = Usuario.where "nome like ?", "%#{@nome_a_buscar}%" # nome like '%{nome}%' é perigoso
	end



	def teste
		@tempo = params[:tempo]
		tempogasto = Tempogasto.new
		tempogasto.tempo = @tempo
		redirect_to conteudotopico1_usuario_path
	end



	def destroy
		id = params[:id]
		Usuario.destroy id
		redirect_to root_url
	end




end
