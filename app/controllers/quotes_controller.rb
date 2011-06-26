class QuotesController < ApplicationController
  # POST /offers
  # POST /offers.xml
  def create
    @quote = Quote.new(params[:quote])

    respond_to do |format|
      if @quote.save
        format.html { redirect_to(:controller=> :offers, :action=>:show, :id=> @quote.offer_id, :notice => 'Cotizacion enviada') }
      end
    end
  end


end
