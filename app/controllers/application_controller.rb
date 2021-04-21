class ApplicationController < ActionController::Base
  before_action :get_time, :draw_cocktail
  def get_time
    t = Time.now
    @time = "#{t.day}/#{t.month}/#{t.year} #{t.hour}:#{t.min}"
  end

  def draw_cocktail
    @drawn_cocktail = Cocktail.all.shuffle.first
  end
end
