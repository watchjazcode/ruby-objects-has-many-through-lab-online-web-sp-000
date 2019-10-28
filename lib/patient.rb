class Patient 
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name 
    save
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  
  
  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end
  
  def doctors
    collected_doctors = []
    appointments.each do |appointment|
      collected_doctors << appointment.doctor
    end
    return collected_doctors
  end
  
end 
