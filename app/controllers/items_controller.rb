class ItemsController < ApplicationController
  before_action :authenticate_user!

  def index
    @item = Item.new
  end

  def scan
    begin
      @item = GetItemFromBarcode.call(current_user.id, params[:item][:barcode])
    rescue StandardError => e
      flash[:error] = e.message
      redirect_to items_path
      return
    end

    if @item.blank?
      flash[:error] = "No item was found with barcode #{params[:item][:barcode]}"
      redirect_to items_path
      return
    end

    redirect_to show_item_path(:id => @item.id)
  end

  def show
    @item = Item.find(params[:id])
  end

  def restock
    item_id = params[:id]
    barcode = params[:barcode]

    results = ItemRestock.call(current_user.id, item_id, barcode)

    flash[:error] = results[:error]
    flash[:notice] = results[:notice]
    redirect_to results[:path]
    return
  end

  def wrong_restock
    @item = Item.find(params[:id])
  end

  def issues
    @issues = Issue.where("resolved_at IS NULL")
  end

  def resolve
    ResolveIssue.call(current_user.id, params[:issue_id])

    redirect_to issues_path
    return
  end

end
