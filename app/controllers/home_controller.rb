class HomeController < ApplicationController
  def homepage
    render({ :template => "home/preindex.html.erb" })
  end
  def homepage1
    matching_items = @current_user.items
    @list_of_items = matching_items.order({ :created_at => :desc })




    # matching_stocks = Stock.all

    # @list_of_stocks = matching_stocks.order({ :created_at => :desc })
    render({ :template => "home/postindex.html.erb" })
  end

end