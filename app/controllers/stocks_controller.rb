class StocksController < ApplicationController
  def index
    matching_stocks = Stock.all

    @list_of_stocks = matching_stocks.order({ :created_at => :desc })

    render({ :template => "stocks/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_stocks = Stock.where({ :id => the_id })

    @the_stock = matching_stocks.at(0)

    render({ :template => "stocks/show.html.erb" })
  end

  def create
    the_stock = Stock.new
    the_stock.item_id = params.fetch("query_item_id")
    the_stock.store_id = params.fetch("query_store_id")

    if the_stock.valid?
      the_stock.save
      redirect_to("/stocks", { :notice => "Stock created successfully." })
    else
      redirect_to("/stocks", { :notice => "Stock failed to create successfully." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_stock = Stock.where({ :id => the_id }).at(0)

    the_stock.item_id = params.fetch("query_item_id")
    the_stock.store_id = params.fetch("query_store_id")

    if the_stock.valid?
      the_stock.save
      redirect_to("/stocks/#{the_stock.id}", { :notice => "Stock updated successfully."} )
    else
      redirect_to("/stocks/#{the_stock.id}", { :alert => "Stock failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_stock = Stock.where({ :id => the_id }).at(0)

    the_stock.destroy

    redirect_to("/stocks", { :notice => "Stock deleted successfully."} )
  end
end
