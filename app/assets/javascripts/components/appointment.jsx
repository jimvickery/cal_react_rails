var Appointment = createReactClass({
  render: function() {
  return (  
   <div>
     <AppointmentForm />
     {this.props.appointments.map(function(appointment) {
          return (
              <Appointment appointment={appointment} />
          )
        })}
   </div>
    ) 
  } 
});