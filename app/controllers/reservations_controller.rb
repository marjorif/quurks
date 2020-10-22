class ReservationsController < ApplicationController
before_action :find_reservation, only: [:show, :edit, :create, :destroy]
before_action :find_trait, only: [:show,:new, :edit, :create, :destroy]

  def index
    # show all the reservations to all the user?
    # show all the reservations for a specific user?
    @reservations = Reservation.all
  end

  def show
    #we need to add SHOW in the config/routes?
    # :trait_id/reservations/:id
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @trait = Trait.find(params[:trait_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.trait = @trait

    if @reservation.save
      redirect_to reservation_path(@reservation), notice: 'Reservation successful' # or uccess page?
    else
      redirect_to trait_path(@trait)
    end
  end

  def update
    @reservation = Reservation.update(reservation_params)
  end

  def destroy
    @trait = Trait.find(params[:trait_id])
    @reservation.destroy
    redirect_to trait_path(@trait), notice: 'Reservation deleted.'
  end



  private

  def find_trait
     @trait = Trait.find(params[:trait_id])
  end

  def find_reservation
    @reservation = Reservation.find(params[:id])
  end

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date)
  end
end
