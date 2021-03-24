class PagesController < ApplicationController
  def home
    @ingriendients = Ingredient.all
  end
end
