class SearchController < ApplicationController
  def index
  end
  
  def query
    @results = Search.query(params[:q])
    render :update do |page|
      @results.each do |result|
        page.insert_html(:top, :results, "<li><a href='images/#{result}'>#{result}</a></li>")
      end
    end
  end
end
