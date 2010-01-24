ActionController::Routing::Routes.draw do |map|
  map.connect '/', :controller => "search", :action => "index"
  map.query '/search/query', :controller => "search", :action => "query"
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
