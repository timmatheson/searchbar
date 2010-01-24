class SearchController < ApplicationController

  def query
    @results = Search.query(params[:q])
    render :update do |page|
      page << "$('results').innerHTML = '';"
      if @results
        @results.each do |result|
          page.insert_html(:top, :results, "<li><a href='images/#{result}'>#{result}</a></li>")
        end
      end
    end
  end
end
