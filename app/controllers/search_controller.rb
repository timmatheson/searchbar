class SearchController < ApplicationController

  def query
    @results = Search.query(params[:q])
    render :update do |page|
      page << "$('results').innerHTML = '';"
      if @results
        @results.each do |result|
          page.insert_html(:top, :results, "<li><a href='images/#{result}'><img src='images/#{result}' height='100' /></a></li>")
        end
      end
    end
  end
end
