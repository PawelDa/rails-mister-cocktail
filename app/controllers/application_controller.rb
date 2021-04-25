class ApplicationController < ActionController::Base
  before_action :get_time, :draw_cocktail
  def get_time
    @day = Time.now.strftime("%A")
  end

  def draw_cocktail
    @drawn_cocktail = Cocktail.all.shuffle.first.id
  end
end
