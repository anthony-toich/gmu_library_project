class ReservationsController < ApplicationController

before_filter :authorize

def index
@available_at = Time.now
  if current_user.admin == true
     @reservations = Reservation.order(:due_on)
   else
     #Show my reservations
      @reservations = Reservation.where(["user_id = ?", current_user.id])
   end
  end

before_action :set_reservation, only: [:show, :edit, :update, :destroy ]

 def show
  @reservations = Reservation.where("user_id = ?", params[:current_user_id])
  end

  def new
    @reservation = Reservation.new
  end

def create
  @reservation = Reservation.new
  @reservation.book_id = params[:book_id]
  @reservation.user_id = current_user.id
  @reservation.save


  if @reservation.save
    redirect_to reservations_url , notice: "Reservation was created!"
  else
    redirect_to reservations_url, notice: "Reservation was NOT created!"
  end

end

def destroy

    @reservation = reservations.where("user_id = :user_id and book_id = :book_id", {user_id: :current_user.id, book_id: :book_id})
    @reservation.destroy

  if @reservation.destroy
    redirect_to reservations_url , notice: "Book was returned!"
  else
    redirect_to reservations_url, notice: "Book was NOT returned!"
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
