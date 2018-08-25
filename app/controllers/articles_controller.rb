class ArticlesController < ApplicationController
	def index
		@articles = Article.all
	end
	def show
		@article = Article.find(params[:id])
		respond_to do |format|
			format.js
		end
	end
	def new
	end
	def create
	end
	def edit
	end
	def update
	end	
	private
	def article_params
		params.require(:article).permit(:title, :text)
	end
end
