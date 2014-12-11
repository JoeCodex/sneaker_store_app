class OutsideTheBoxController < ApplicationController
  def home
  end

  def info
  end

  def product
    @products = Product.all
  end

  def release
  end

  def contact
  end

  def shopping_cart
  end
end
