class HomeController < ApplicationController
  def index
  	@current_time = Time.now.stamp_like('Feb 1st 09:00 pm')
  	@greet_message = case Time.now.hour
  		when 5..11
  		"Good Morning!"
  		when 12..15
  		"Good Afternoon!"
  		when 16..19
  		"Good Evening!"
  		when 20..23, 0..4
  		"Good Night! <i class='fa fa-moon-o'></i>".html_safe
  		end

    @quip = Quote.all.sample.quip

	end
end
