class ApplicationController < ActionController::Base
  before_action :get_time, :
  def get_time
    t = Time.now
    @time = "#{t.day}/#{t.month}/#{t.year} #{t.hour}:#{t.min}"
  end

  def draw_a_cocktail
    
  end
end
