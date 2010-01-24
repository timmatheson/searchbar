class SearchController < ApplicationController

  def query
    @results = Search.query(params[:q])
    render :update do |page|
      if @results
        page.replace_html("results","")
        page.replace_html("image_count",@results.size)
        @results.each do |result|
          page.insert_html(:top, :results, :partial => "result", :locals => {:result => result })
        end
      end
    end
  end
end
