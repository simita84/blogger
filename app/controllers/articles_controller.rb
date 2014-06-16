class ArticlesController < ApplicationController
def index
	@articles=Article.all

end


def show

	@article= Article.find(params[:id])

end


def new
	@article= Article.new
end

def create
	@article=Article.create(params[:article])
	 
	if @article.save
		 
		flash.notice = "Article '#{@article.title}' created!"
		redirect_to articles_path

	else
		flash.notice="Article '#{@article.title}' not created!"
		render new_article_path
	end
	
end


def edit

	@article=Article.find(params[:id])

end

def update
	@article=Article.find(params[:id])
	@article.update_attributes(params[:article])
	redirect_to article_path
end
 
	def destroy

	@article=Article.find(params[:id])
	if @article.destroy
		flash[:notice]=@article.title + " deleteed Successfully"	
	else
	flash[:notice]= "Not Successful"
	end

	redirect_to articles_path
	end
 
end
