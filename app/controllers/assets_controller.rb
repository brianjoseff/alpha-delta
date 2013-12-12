class AssetsController < ApplicationController
  before_filter :load_imageable
  
  def index
    @assets = @imageable.assets
    #@imageable is a album or composite or job posting
  end

  def new
    @asset = @imageable.assets.new
  end

  def create
    @asset = @imageable.assets.new(params[:asset])
    if @asset.save
      # redirect_to @imageable, notice: "Photos added."
      render :action => 'create.js.erb'
    else
      render :new
    end
  end

private

  # determine name of imageable resource (composite, album, etc.) and grab second element in array of url `/composite/1/'
  def load_imageable
    resource, id = request.path.split('/')[1, 2]
    @imageable = resource.singularize.classify.constantize.find(id)
  end

  # alternative option:
  # def load_commentable
  #   klass = [Article, Photo, Event].detect { |c| params["#{c.name.underscore}_id"] }
  #   @commentable = klass.find(params["#{klass.name.underscore}_id"])
  # end
end