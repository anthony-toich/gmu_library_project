class ReservationsController < ApplicationController

before_filter :authorize

before_action :set_reservation, only: [ :show, :edit, :update, :destroy ]

def index
@available_at = Time.now
    @reservations = Reservation.order(:reserved_on)
  end

def new
    @reservation = Reservation.new
  end

def create
  @reservation = Reservation.new(reservation_params)
  @reservation.save
   if @reservation.save
  redirect_to @reservation, notice: "Reservation was created!"
else
redirect_to @reservation, notice: "Reservation was NOT created!"
end
end



private
def reservation_params
  params.require(:reservation).permit(:user_id, :book_id, :reserved_on, :due_on)
end

def set_reservation
  @reservation = Reservation.find(params[:id])
end










end
