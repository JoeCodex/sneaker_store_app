class OutsideTheBoxController < ApplicationController
  def home
  end

  def info
  end

  def product
    @products = Product.where(inshop: true)
  end

  def release
    @products = Product.where(inshop: false)
  end

  def contact
  end

  def shopping_cart
  end
end
