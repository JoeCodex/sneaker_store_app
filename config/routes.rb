Rails.application.routes.draw do
  get '/' => 'outside_the_box#home'

  get 'info' => 'outside_the_box#info'

  get 'product' => 'outside_the_box#product'

  get 'release' => 'outside_the_box#release'

  get 'contact' => 'outside_the_box#contact'

  get 'shopping_cart' => 'outside_the_box#shopping_cart'

  post "/shopping_cart/products/:id" => "outside_the_box#shopping_cart"

end
