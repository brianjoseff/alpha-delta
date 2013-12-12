class PagesController < ApplicationController
  skip_before_filter :authorize
  def index
     @news_items = NewsItem.order("created_at ASC").last(5)
  end

  def history
  end

  def alumni_news
  end
  
end
