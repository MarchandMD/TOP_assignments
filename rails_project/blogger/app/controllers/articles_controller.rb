#these are the actions....they will require views; The views are the webpages...structure, style, etc...
class ArticlesController < ApplicationController
    include ArticlesHelper

    def index
        @articles = Article.all
    end

    def show
        @article = Article.find(params[:id])
    end
    
    def new
        @article = Article.new
    end
    
    def create
        @article = Article.new(article_params)
        @article.save
        flash.notice = "New Article: '#{article_params[:title]}' added!"
        redirect_to article_path(@article)
    end
    
    def edit
        @article = Article.find(params[:id])
    end
    
    def update
        @article = Article.find(params[:id])
        @article.update(article_params)
        # I had to finesse this a little.... i knew I wanted to inject the param[:title] into the flash.notice...but I didn't know how to access the right param. Thankfully the Rails error text pointed me to the problem...then it was a matter of looking within this action/method to figure how to grab the title from the hash. 
        flash.notice = "Article '#{article_params[:title]}' updated!"
        redirect_to action: :index
    end

    def destroy
       @article = Article.find(params[:id])
       @article.destroy
       flash.notice = "Article deleted!"
       redirect_to action: :index
    end

end
