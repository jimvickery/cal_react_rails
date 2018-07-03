class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.all.order('appt_time ASC')
    @appointment = Appointment.new
  end
end
