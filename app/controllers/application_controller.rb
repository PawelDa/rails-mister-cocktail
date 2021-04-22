class ApplicationController < ActionController::Base
  before_action :get_time, :draw_cocktail
  def get_time
    t = Time.now
    @time = t.strftime("%d/%m/%Y %I:%M %p")
  end

  def draw_cocktail
    @drawn_cocktail = Cocktail.all.shuffle.first
  end
end
