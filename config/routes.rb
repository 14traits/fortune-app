Rails.application.routes.draw do
  get "/fortune", controller: "my_examples", action: "get_fortune"
  get "/lotto", controller: "my_examples", action: "get_lotto"
  # get "/page_count", controller: "my_examples", action "get_page_count"
  get "/bottles_song", controller: "my_examples", action: "get_bottle_song"
end
