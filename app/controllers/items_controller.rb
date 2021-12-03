class ItemsController < ApplicationController
  def index
    self.load_current_user
    matching_items = @current_user.items

    @list_of_items = matching_items.order({ :created_at => :desc })

    render({ :template => "items/index.html.erb" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_items = Item.where({ :id => the_id })
    matching_stocks = Stock.where({:item_id => the_id})

    @the_item = matching_items.at(0)
    @the_stock_item = matching_stocks.at(0)
    render({ :template => "items/show.html.erb" })
  end

  def create

    
    the_item = Item.new
    the_item.name = params.fetch("query_name")
    the_item.quantity = params.fetch("query_quantity")
    the_item.price = params.fetch("query_price")
    the_item.user_id = session.fetch(:user_id)



    if the_item.valid?
      the_item.save
      # the_stock = Stock.new
      # the_stock.store_id = params.fetch("query_store")
      # the_stock.item_id = the_item.id
      # the_stock.save
      redirect_to("/home", { :notice => "Item created successfully." })
    else
      redirect_to("/items", { :notice => "Failed to add item." })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_item = Item.where({ :id => the_id }).at(0)

    the_item.name = params.fetch("query_name")
    the_item.quantity = params.fetch("query_quantity")
    the_item.price = params.fetch("query_price")

    if the_item.valid?
      the_item.save
      redirect_to("/home", { :notice => "Item updated successfully."} )
    else
      redirect_to("/items/#{the_item.id}", { :alert => "Item failed to update successfully." })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_item = Item.where({ :id => the_id }).at(0)

    the_item.destroy

    redirect_to("/home", { :notice => "An item was deleted successfully."} )
  end
end
