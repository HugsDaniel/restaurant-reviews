class FlatsController < ApplicationController
  def index
    @flats = Flat.all

    # -----
  end

  def new
    @flat = Flat.new

    # -----
  end

  def create
    @flat = Flat.new(flat_params)

    if @flat.save
      # ...
      redirect_to flats_path # ==> Entre dans l'action show
    else
      # ...
    end
  end

  def show
    @flat = Flat.find(params[:id])

    # -----
  end
end
