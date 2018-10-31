class ArticlesController < ApplicationController
    
    def index
        @articles = Article.all
    end
    
    def new
        @article = Article.new  
    end
    
    #Rails by default returns 204 No Content response for an action if we don't specify what the response should be.
    def create
        @article = Article.new(article_params)
    #The render method is used so that the @article object is passed back to the new template when it is rendered. This rendering is done within the same request as the form submission, whereas the redirect_to will tell the browser to issue another request.
        if @article.save             #store the article into database
            redirect_to @article
        else
            render 'new'
        end
    end
    
    #We also use an instance variable (prefixed with @) to hold a reference to the article object. We do this because Rails will pass all instance variables to the view.
    def show
        @article = Article.find(params[:id])
    end
    
    def edit
        @article = Article.find(params[:id])
    end
    
    
    def create
      @article = Article.new(article_params)
     
      if @article.save
        redirect_to @article
      else
        render 'new'
      end
    end
 
    def update
      @article = Article.find(params[:id])
     
      if @article.update(article_params)
        redirect_to @article
      else
        render 'edit'
      end
    end
    
    def destroy
        @article = Article.find(params[:id])
        @article.destroy
        
        redirect_to articles_path
    end
    
private
    def article_params
        params.require(:article).permit(:title, :text)
    end
end
