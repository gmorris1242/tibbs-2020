class WorkController < ApplicationController
  def show
    respond_to do |format|
      format.html { head :not_found }
      format.js do
        @src = params[:src]
      end
      format.any { head :not_found }
    end
  end
end
