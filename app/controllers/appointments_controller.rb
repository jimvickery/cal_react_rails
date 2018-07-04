class AppointmentsController < ApplicationController
  before_action :find_appointment, only:[:update, :destroy]


  def index
    @appointments = Appointment.all.order('appt_time ASC')
    @appointment = Appointment.new
  end

  def create 
    @appointment = Appointment.create(appointment_params)
    redirect_to :root
  end

  def destroy 
   @appointment.destroy
   redirect_to :root
  end


  private

  def appointment_params
    params.require(:appointment).permit(:title, :appt_time)
  end

  def find_appointment
    @appointment = Appointment.find(params[:id])
  end

end
