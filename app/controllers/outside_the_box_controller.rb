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
    p session[:cart]
    # @products_in_cart = Product.each[:id]
    @products = []

    session[:cart].each do |id|
      @products << Product.find(id.to_i)
    end

  end
end

