class Doctor 
  
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

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  end
  
  def new_appointment(date, patient)
    Appointment.new(date, self, patient)
  end
  
  def appointments 
    Appointment.all.select {|appointment| appointment.doctor == self}
  end
  
  def patients
    collected_patients = []
    appointments.each do |appointment|
      collected_genres << song.genre
    end
    return collected_genres
  end
  end
  
end