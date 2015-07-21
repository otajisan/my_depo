class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    # 画面表示時にカウンタを加算
    if session[:counter].nil?
        session[:counter] = 1
    else
        session[:counter] += 1
    end
  end
end

