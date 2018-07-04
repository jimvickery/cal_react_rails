class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all.order('appt_time ASC')
    @appointment = Appointment.new
  end

  def create 
    @appointment = Appointment.create(appointment_params)
    redirect_to :root
  end


  private

  def appointment_params
    params.require(:appointment).perimt(:title, :appt_time)
  end

end
